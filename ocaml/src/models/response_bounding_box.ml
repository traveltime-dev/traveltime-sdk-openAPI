(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    envelope: Response_box.t;
    boxes: Response_box.t list;
} [@@deriving yojson { strict = false }, show ];;

let create (envelope : Response_box.t) (boxes : Response_box.t list) : t = {
    envelope = envelope;
    boxes = boxes;
}

