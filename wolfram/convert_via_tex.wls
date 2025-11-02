#!/usr/bin/env wolframscript
(*
 * Convert Wolfram Notebook to Markdown via TeX export
 * This preserves LaTeX math properly
 *)

(* Configuration *)
inputFile = FileNameJoin[{DirectoryName[$InputFileName], "math", "integrals1.nb"}];
outputDir = FileNameJoin[{DirectoryName[$InputFileName], "markdown_output"}];
texFile = FileNameJoin[{outputDir, "temp.tex"}];
outputFile = FileNameJoin[{outputDir, "integrals1_clean.md"}];

(* Create output directory *)
If[!DirectoryQ[outputDir], CreateDirectory[outputDir]];

Print["Input file: ", inputFile];
Print["Output file: ", outputFile];
Print[StringRepeat["=", 60]];

(* Step 1: Export to TeX *)
Print["Step 1: Exporting to TeX..."];
Check[
  nb = Import[inputFile, "NB"];
  Export[texFile, nb, "TeX"];
  Print["  TeX export successful"],
  Print["  TeX export failed"];
  Exit[1]
];

(* Step 2: Read TeX file *)
Print["Step 2: Reading TeX file..."];
texContent = Import[texFile, "Text"];

(* Step 3: Convert TeX to Markdown *)
Print["Step 3: Converting TeX to Markdown..."];

(* Remove LaTeX preamble (everything before \begin{document}) *)
mdContent = StringReplace[texContent,
  Shortest[StartOfString ~~ ___ ~~ "\\begin{document}\n\n"] -> ""];

(* Remove LaTeX end *)
mdContent = StringReplace[mdContent, "\\end{document}" -> ""];

(* Convert inline math \(...\) to $...$ for better Markdown compatibility *)
mdContent = StringReplace[mdContent, {
  "\\(" -> "$",
  "\\)" -> "$"
}];

(* Convert display math \[...\] to $$...$$ *)
mdContent = StringReplace[mdContent, {
  "\\[" -> "$$\n",
  "\\]" -> "\n$$"
}];

(* Convert equation environments to $$...$$ *)
mdContent = FixedPoint[
  StringReplace[#,
    "\\begin{equation}" ~~ Shortest[content___] ~~ "\\end{equation}" :> "$$" <> content <> "$$"
  ] &,
  mdContent
];

(* Convert section commands to Markdown *)
mdContent = StringReplace[mdContent, {
  "\\section*{" ~~ content__ ~~ "}" :> "## " <> content,
  "\\subsection*{" ~~ content__ ~~ "}" :> "### " <> content,
  "\\subsubsection*{" ~~ content__ ~~ "}" :> "#### " <> content
}];

(* Clean up common LaTeX constructs *)
mdContent = FixedPoint[
  StringReplace[#, {
    (* Text formatting *)
    "\\textit{" ~~ Shortest[content__] ~~ "}" :> "*" <> content <> "*",
    "\\textbf{" ~~ Shortest[content__] ~~ "}" :> "**" <> content <> "**",

    (* Special symbols in text mode *)
    "\\text{$<$=}" -> "≤",
    "\\text{$>$=}" -> "≥",
    "\\text{$<$}" -> "<",
    "\\text{$>$}" -> ">",
    "\\text{$|$-$>$}" -> "→",

    (* Escaped characters *)
    "{'}"|"{'}" -> "'",
    "{ }" -> " ",

    (* Line breaks *)
    "\\\\\n" -> "\n",
    "\\\\" -> " ",

    (* Unicode *)
    "\\unicode{001b}" -> ""
  }] &,
  mdContent,
  20
];

(* Clean up excessive whitespace *)
mdContent = StringReplace[mdContent, "\n\n\n" ~~ ___ ~~ "\n" -> "\n\n"];
mdContent = StringReplace[mdContent, "\n\n\n" -> "\n\n"];

(* Step 4: Export Markdown *)
Print["Step 4: Writing Markdown file..."];
Export[outputFile, mdContent, "Text"];

(* Clean up temp file *)
DeleteFile[texFile];

Print[StringRepeat["=", 60]];
Print["SUCCESS: Converted to ", outputFile];
Print["File size: ", FileByteCount[outputFile], " bytes"];

(* Show first few lines as preview *)
Print["\nPreview (first 500 characters):"];
Print[StringTake[mdContent, UpTo[500]]];