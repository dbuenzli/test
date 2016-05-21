#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let build () =
  let ocamlbuild = Conf.tool "ocamlbuild" `Build_os in
  let ocamlbuild = Cmd.(ocamlbuild % "-classic-display" % "-use-ocamlfind") in
  OS.Cmd.run Cmd.(ocamlbuild % "mylib.cma")


let main () =
  begin
    Topkg.Private.disable_main (); (* We only want the nicer OS API. *)
    Log.app (fun m -> m "HAHA");
    build ()
    >>= fun () -> Ok 0
  end
  |> Log.on_error_msg ~use:(fun () -> 1)

let () = exit (main ())
