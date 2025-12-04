#!/usr/bin/env wolframscript
(*
 * Test conversion of a single notebook to Markdown
 * Usage: wolframscript -file test_convert.wls
 *)

(* Test with bayes.nb *)
inputFile = FileNameJoin[{DirectoryName[$InputFileName], "math", "bayes.nb"}];
outputFile = FileNameJoin[{DirectoryName[$InputFileName], "test_output.md"}];

Print["Testing conversion of: ", inputFile];
Print["Output file: ", outputFile];
Print[StringRepeat["=", 60]];

(* Try conversion *)
success = Check[
  nb = Import[inputFile, "NB"];
  Print["Notebook imported successfully"];
  Export[outputFile, nb, "Markdown"];
  Print["Export completed"];
  True,
  Print["ERROR during conversion"];
  False
];

If[success,
  Print["\n", StringRepeat["=", 60]];
  Print["SUCCESS! Check: ", outputFile];

  (* Show first few lines *)
  content = Import[outputFile, "Text"];
  lines = StringSplit[content, "\n"];
  Print["\nFirst 20 lines of output:"];
  Print[StringRepeat["-", 60]];
  Print[StringRiffle[Take[lines, UpTo[20]], "\n"]];
  ,
  Print["CONVERSION FAILED"]
];
