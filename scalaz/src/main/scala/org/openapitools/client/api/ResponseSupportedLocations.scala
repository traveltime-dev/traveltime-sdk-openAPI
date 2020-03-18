package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ResponseSupportedLocations._

case class ResponseSupportedLocations (
  locations: List[ResponseSupportedLocation],
unsupportedLocations: List[String])

object ResponseSupportedLocations {
  import DateTimeCodecs._

  implicit val ResponseSupportedLocationsCodecJson: CodecJson[ResponseSupportedLocations] = CodecJson.derive[ResponseSupportedLocations]
  implicit val ResponseSupportedLocationsDecoder: EntityDecoder[ResponseSupportedLocations] = jsonOf[ResponseSupportedLocations]
  implicit val ResponseSupportedLocationsEncoder: EntityEncoder[ResponseSupportedLocations] = jsonEncoderOf[ResponseSupportedLocations]
}
