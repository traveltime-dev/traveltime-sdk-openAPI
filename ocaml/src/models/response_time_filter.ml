(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    results: Response_time_filter_result.t list;
} [@@deriving yojson { strict = false }, show ];;

let create (results : Response_time_filter_result.t list) : t = {
    results = results;
}
