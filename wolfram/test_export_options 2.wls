#!/usr/bin/env wolframscript
(*
 * Test different export options for Markdown
 *)

inputFile = FileNameJoin[{DirectoryName[$InputFileName], "math", "integrals1.nb"}];
outputDir = FileNameJoin[{DirectoryName[$InputFileName], "markdown_output"}];

(* Create output directory *)
If[!DirectoryQ[outputDir], CreateDirectory[outputDir]];

Print["Testing different Markdown export options"];
Print[StringRepeat["=", 60]];

(* Check what options are available *)
Print["Available export elements for Markdown:"];
Print[Export["test.md", List[]]];

(* Try TeX export first to see what we get *)
latexFile = FileNameJoin[{outputDir, "integrals1_test.tex"}];
Print["\nTrying TeX export..."];
Check[
  nb = Import[inputFile, "NB"];
  Export[latexFile, nb, "TeX"];
  Print["TeX export succeeded: ", latexFile];
  Print["Size: ", FileByteCount[latexFile], " bytes"],
  Print["TeX export failed"]
];

(* Try plain text export *)
txtFile = FileNameJoin[{outputDir, "integrals1_test.txt"}];
Print["\nTrying Text export..."];
Check[
  Export[txtFile, nb, "Text"];
  Print["Text export succeeded: ", txtFile];
  Print["Size: ", FileByteCount[txtFile], " bytes"],
  Print["Text export failed"]
];