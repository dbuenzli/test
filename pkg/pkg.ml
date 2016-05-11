#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () =
  Pkg.describe "mylib" @@ fun c ->
  Ok [ Pkg.mllib "src/mylib.mllib" ]
