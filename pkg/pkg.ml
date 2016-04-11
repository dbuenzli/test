#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () =
  Pkg.describe "test" [
    Pkg.lib ~exts:Exts.module_library "src/test"; ]
