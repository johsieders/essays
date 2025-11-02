#!/usr/bin/env wolframscript
(* Check available export formats for notebooks *)

Print["Checking available export formats for Notebook files..."];
Print[StringRepeat["=", 60]];

(* Show all export formats *)
formats = $ExportFormats;
Print["Total export formats available: ", Length[formats]];
Print[];

(* Filter for text-like formats *)
textFormats = Select[formats,
  StringContainsQ[#, "Text" | "Markdown" | "HTML" | "LaTeX", IgnoreCase -> True] &
];

Print["Text/Markdown-related formats:"];
Print[StringRiffle[textFormats, "\n"]];
