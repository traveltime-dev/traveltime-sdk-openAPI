(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string;
    coords: Coords.t;
    transportation: Request_transportation.t;
    travel_time: int32;
    arrival_time: string;
    properties: Enums.requesttimemapproperty list;
    range: Request_range_no_max_results.t option [@default None];
    level_of_detail: Request_level_of_detail.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (coords : Coords.t) (transportation : Request_transportation.t) (travel_time : int32) (arrival_time : string) : t = {
    id = id;
    coords = coords;
    transportation = transportation;
    travel_time = travel_time;
    arrival_time = arrival_time;
    properties = [];
    range = None;
    level_of_detail = None;
}

