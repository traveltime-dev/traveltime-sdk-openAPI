(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    shell: Coords.t list;
    holes: Coords.t list list;
} [@@deriving yojson { strict = false }, show ];;

let create (shell : Coords.t list) (holes : Coords.t list list) : t = {
    shell = shell;
    holes = holes;
}

