(* ::Package:: *)

(* ::Subsection:: *)
(*Building X*)


(* 
Given: 
Functions fs = {f1, f2, .., fm} defined for xs = {x1, x2, .., xm}
Target function g defined for xs
Wanted: 
A vector w (m dimensions) minimizing norm[Xw - y]
*)

(* Define xs, fs, and g *)
xs = Range[4];
fs = {(#^1)&, (#^2)&};  (* some functions *)
fs[[2]][8];
g = (#^1 + #^2 + 1)&;   (* the target function *)

(* Define X and y, test interpolation and plotting *)
xx = Table[f[x],{x, xs},{f, fs}]; (* that's the X *)
y = Table[g[x], {x, xs}]; (* the target function as vector *)
xx[[4]];
h1 = Table[{x, g[x]}, {x, xs}]; (* the target function for interpolation *)
h2 = Interpolation[h1];    (* the target function for plotting *)
Plot[h2[x], {x, 1, 4}]


(* ::Subsection:: *)
(*Linear Regression*)


w = LeastSquares[xx, y];
y1 = xx . w;       (* y1 is best approximation of y as vector *)
Norm[y1 - y]
t1 = Table[{x, y1[[x]]}, {x, xs}]; (* y1 as table for interpolation *)
g1 = Interpolation[t1];
(* Plot[{fs[[1]][x], fs[[2]][x], g1[x], g[x]}, {x, 1, 4}] *)
Plot[{g1[x], g[x]}, {x, 1, 4}]


