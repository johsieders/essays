#!/usr/bin/env wolframscript
(*
 * Batch convert Wolfram Notebooks (.nb) to Markdown (.md)
 * Uses TeX export to preserve LaTeX math
 * Usage: wolframscript -file batch_convert.wls
 *)

(* Helper function to convert a single file *)
ConvertNotebook[inputFile_, outputDir_] := Module[{
   texFile, mdFile, nb, texContent, mdContent},

  (* Generate output paths *)
  texFile = FileNameJoin[{outputDir, "temp.tex"}];
  mdFile = FileNameJoin[{outputDir,
    FileBaseName[inputFile] <> ".md"}];

  Print["Converting: ", FileNameTake[inputFile]];

  (* Step 1: Export to TeX *)
  If[!Check[
    nb = Import[inputFile, "NB"];
    Export[texFile, nb, "TeX"];
    True,
    False
  ],
    Print["  ERROR: TeX export failed"];
    Return[False]
  ];

  (* Step 2: Read and convert TeX to Markdown *)
  texContent = Import[texFile, "Text"];

  (* Remove LaTeX preamble and end *)
  mdContent = StringReplace[texContent,
    Shortest[StartOfString ~~ ___ ~~ "\\begin{document}\n\n"] -> ""];
  mdContent = StringReplace[mdContent, "\\end{document}" -> ""];

  (* Convert inline math \(...\) to $...$ *)
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
      "\\begin{equation}" ~~ Shortest[content___] ~~ "\\end{equation}" :>
        "$$" <> content <> "$$"
    ] &,
    mdContent
  ];

  (* Convert section commands to Markdown *)
  mdContent = StringReplace[mdContent, {
    "\\section*{" ~~ Shortest[content__] ~~ "}" :> "## " <> content,
    "\\subsection*{" ~~ Shortest[content__] ~~ "}" :> "### " <> content,
    "\\subsubsection*{" ~~ Shortest[content__] ~~ "}" :> "#### " <> content
  }];

  (* Clean up LaTeX constructs *)
  mdContent = FixedPoint[
    StringReplace[#, {
      (* Text formatting *)
      "\\textit{" ~~ Shortest[content__] ~~ "}" :> "*" <> content <> "*",
      "\\textbf{" ~~ Shortest[content__] ~~ "}" :> "**" <> content <> "**",
      (* Special symbols *)
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
      (* Common unicode issues *)
      "\\unicode{001b}" -> "",
      "\\unicode{f438}" -> "lim",  (* limit symbol *)
      (* Extra braces *)
      "$}" -> "$",
      "}$" -> "$"
    }] &,
    mdContent,
    20
  ];

  (* Clean up whitespace *)
  mdContent = StringReplace[mdContent, "\n\n\n" -> "\n\n"];

  (* Export Markdown *)
  Export[mdFile, mdContent, "Text"];

  (* Clean up temp file *)
  If[FileExistsQ[texFile], DeleteFile[texFile]];

  Print["  SUCCESS: ", FileBaseName[mdFile], ".md (",
    FileByteCount[mdFile], " bytes)"];
  True
];

(* Main script *)
inputDir = DirectoryName[$InputFileName];
outputDir = FileNameJoin[{inputDir, "markdown_output"}];

(* Create output directory *)
If[!DirectoryQ[outputDir], CreateDirectory[outputDir]];

(* Find all .nb files *)
notebookFiles = FileNames["*.nb", inputDir, Infinity];

Print["Wolfram Notebook to Markdown Converter"];
Print[StringRepeat["=", 60]];
Print["Input directory: ", inputDir];
Print["Output directory: ", outputDir];
Print["Found ", Length[notebookFiles], " notebook file(s)"];
Print[StringRepeat["=", 60]];

(* Convert each notebook *)
results = ConvertNotebook[#, outputDir] & /@ notebookFiles;

(* Summary *)
Print[StringRepeat["=", 60]];
Print["Conversion complete!"];
Print["Successful: ", Count[results, True], " / ", Length[results]];
Print["Failed: ", Count[results, False]];
Print["Output directory: ", outputDir];