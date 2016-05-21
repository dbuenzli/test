#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let build_support () =
  let ocaml = Conf.tool "ocaml" `Build_os in
  OS.Cmd.run Cmd.(ocaml % "pkg/build_support.ml")


let () =
  let distrib = Pkg.distrib ~massage:build_support () in
  Pkg.describe "mylib" ~distrib @@ fun c ->
  Ok [ Pkg.mllib "src/mylib.mllib" ]
