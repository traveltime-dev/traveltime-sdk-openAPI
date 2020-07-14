(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    search_id: string;
    shapes: Response_shape.t list;
    properties: Response_time_map_properties.t;
} [@@deriving yojson { strict = false }, show ];;

let create (search_id : string) (shapes : Response_shape.t list) (properties : Response_time_map_properties.t) : t = {
    search_id = search_id;
    shapes = shapes;
    properties = properties;
}
