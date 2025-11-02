#!/usr/bin/env wolframscript
(*
 * Convert Wolfram Notebook to Markdown with LaTeX math (not images)
 * This processes cells individually to preserve math as LaTeX
 *)

(* Configuration *)
inputFile = FileNameJoin[{DirectoryName[$InputFileName], "math", "integrals1.nb"}];
outputDir = FileNameJoin[{DirectoryName[$InputFileName], "markdown_output"}];
outputFile = FileNameJoin[{outputDir, "integrals1_latex.md"}];

(* Create output directory *)
If[!DirectoryQ[outputDir], CreateDirectory[outputDir]];

Print["Input file: ", inputFile];
Print["Output file: ", outputFile];
Print[StringRepeat["=", 60]];

(* Helper function to convert a cell to markdown *)
ConvertCell[cell_] := Module[{style, content, result},
  style = cell[[1]];
  content = cell[[2]];

  result = Which[
    (* Title cells *)
    style === "Title",
    "# " <> ToString[content, StandardForm] <> "\n\n",

    (* Section headers *)
    style === "Section",
    "## " <> ToString[content, StandardForm] <> "\n\n",

    style === "Subsection",
    "### " <> ToString[content, StandardForm] <> "\n\n",

    style === "Subsubsection",
    "#### " <> ToString[content, StandardForm] <> "\n\n",

    (* Text cells *)
    style === "Text",
    ToString[content, StandardForm] <> "\n\n",

    (* Math cells - convert to LaTeX *)
    style === "DisplayFormula" || style === "DisplayFormulaNumbered",
    "$$" <> ToString[content, TeXForm] <> "$$\n\n",

    (* Inline math *)
    style === "InlineFormula",
    "$" <> ToString[content, TeXForm] <> "$",

    (* Input/Output cells - as code blocks *)
    style === "Input" || style === "Code",
    "```mathematica\n" <> ToString[content, InputForm] <> "\n```\n\n",

    style === "Output",
    "```\n" <> ToString[content, OutputForm] <> "\n```\n\n",

    (* Default: try to convert as text *)
    True,
    ToString[content, StandardForm] <> "\n\n"
  ];

  result
];

(* Try to convert *)
success = Check[
  (* Import as expression *)
  nb = Import[inputFile, "NB"];

  (* Extract cells *)
  cells = Cases[nb, Cell[content_, style_, ___] :> {style, content}, Infinity];

  Print["Found ", Length[cells], " cells"];

  (* Convert each cell *)
  markdown = StringJoin[ConvertCell /@ cells];

  (* Export *)
  Export[outputFile, markdown, "Text"];

  True,
  False
];

If[success,
  Print["SUCCESS: Converted to ", outputFile];
  Print["File size: ", FileByteCount[outputFile], " bytes"],
  Print["FAILED: Could not convert"]
];