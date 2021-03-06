(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    _type: Enums.requesttransportation_type;
    disable_border_crossing: bool option [@default None];
    pt_change_delay: int32 option [@default None];
    walking_time: int32 option [@default None];
    driving_time_to_station: int32 option [@default None];
    cycling_time_to_station: int32 option [@default None];
    parking_time: int32 option [@default None];
    boarding_time: int32 option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (_type : Enums.requesttransportation_type) : t = {
    _type = _type;
    disable_border_crossing = None;
    pt_change_delay = None;
    walking_time = None;
    driving_time_to_station = None;
    cycling_time_to_station = None;
    parking_time = None;
    boarding_time = None;
}

