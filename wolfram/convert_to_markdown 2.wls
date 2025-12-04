#!/usr/bin/env wolframscript
(*
 * Batch convert Wolfram Notebooks (.nb) to Markdown (.md)
 * Usage: wolframscript -file convert_to_markdown.wls
 *)

(* Configuration *)
inputDir = DirectoryName[$InputFileName];
outputDir = FileNameJoin[{inputDir, "markdown_output"}];

(* Create output directory *)
If[!DirectoryQ[outputDir], CreateDirectory[outputDir]];

(* Find all .nb files *)
notebookFiles = FileNames["*.nb", inputDir, Infinity];

Print["Found ", Length[notebookFiles], " notebook files"];
Print["Output directory: ", outputDir];
Print[StringRepeat["=", 60]];

(* Convert each notebook *)
Do[
  Module[{relativePath, outputPath, outputFile, nb, success},
    (* Get relative path and construct output path *)
    relativePath = FileNameDrop[file, Length[FileNameSplit[inputDir]]];
    outputPath = FileNameJoin[Prepend[Most[FileNameSplit[relativePath]], outputDir]];
    outputFile = FileNameJoin[{outputPath, FileBaseName[file] <> ".md"}];

    (* Create subdirectories if needed *)
    If[!DirectoryQ[outputPath], CreateDirectory[outputPath]];

    Print["Converting: ", FileNameTake[file, -2]];

    (* Try to convert *)
    success = Check[
      nb = Import[file, "NB"];
      Export[outputFile, nb, "MarkdownText"];
      True,
      False
    ];

    If[success,
      Print["  -> Success: ", FileNameTake[outputFile, -2]],
      Print["  -> FAILED: Could not convert"]
    ];
  ],
  {file, notebookFiles}
];

Print[StringRepeat["=", 60]];
Print["Conversion complete!"];
Print["Check output in: ", outputDir];

(* Summary of created files *)
mdFiles = FileNames["*.md", outputDir, Infinity];
Print["Created ", Length[mdFiles], " Markdown files"];