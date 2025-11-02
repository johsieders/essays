#!/usr/bin/env wolframscript
(*
 * Test conversion of a single notebook to Markdown
 *)

(* Configuration *)
inputFile = FileNameJoin[{DirectoryName[$InputFileName], "math", "integrals1.nb"}];
outputDir = FileNameJoin[{DirectoryName[$InputFileName], "markdown_output"}];
outputFile = FileNameJoin[{outputDir, "integrals1.md"}];

(* Create output directory *)
If[!DirectoryQ[outputDir], CreateDirectory[outputDir]];

Print["Input file: ", inputFile];
Print["Output file: ", outputFile];
Print[StringRepeat["=", 60]];

(* Try to convert *)
success = Check[
  nb = Import[inputFile, "NB"];
  Export[outputFile, nb, "Markdown"];
  True,
  False
];

If[success,
  Print["SUCCESS: Converted to ", outputFile];
  Print["File size: ", FileByteCount[outputFile], " bytes"],
  Print["FAILED: Could not convert"]
];