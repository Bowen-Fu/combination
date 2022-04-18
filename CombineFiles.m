(* ::Package:: *)

(* ::Input::Initialization:: *)
SetOptions[EvaluationNotebook[],CellContext->Notebook]


(* ::Input::Initialization:: *)
\[Chi]sqTable100={};ObsPredTable100={};SignsTable100={};Do[SetDirectory["/home/bf1d18/SO10newmin/Signs/Group"<>ToString[k]<>""];Do[\[Chi]sqTablePart=Import["data/arc_chi_"<>ToString[j]<>".dat","Data"];ObsPredPart=Import["data/ObsPred_"<>ToString[j]<>".dat","Data"];SignsPart=Import["data/Signs_"<>ToString[j]<>".dat","Data"];Do[AppendTo[\[Chi]sqTable100,\[Chi]sqTablePart[[i]]],{i,1,\[Chi]sqTablePart}];Do[AppendTo[ObsPredTable100,ObsPredPart[[i]]],{i,1,\[Chi]sqTablePart}];Do[AppendTo[SignsTable100,SignsPart[[i]]],{i,1,\[Chi]sqTablePart}];,{j,1,10}],{k,1,8}];


(* ::Input::Initialization:: *)
Do[SetDirectory["/home/bf1d18/SO10newmin/Signs/Group"<>ToString[k]<>""];Export["arc_chi_100.dat",\[Chi]sqTable100];Export["ObsPred_100.dat",ObsPredTable100];Export["Signs_100.dat",SignsTable100];,{k,9,24}];
