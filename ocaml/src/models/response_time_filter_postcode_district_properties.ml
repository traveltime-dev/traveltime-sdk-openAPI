(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    travel_time_reachable: Response_travel_time_statistics.t option [@default None];
    travel_time_all: Response_travel_time_statistics.t option [@default None];
    coverage: float option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    travel_time_reachable = None;
    travel_time_all = None;
    coverage = None;
}

