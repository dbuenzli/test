#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () =
  Pkg.describe "mylib" @@ fun c ->
  Ok [ Pkg.install_mllib "src/mylib.mllib" ]
