package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RequestTimeFilterPostcodeDistrictsProperty._

case class RequestTimeFilterPostcodeDistrictsProperty (
  
object RequestTimeFilterPostcodeDistrictsProperty {
  import DateTimeCodecs._

  implicit val RequestTimeFilterPostcodeDistrictsPropertyCodecJson: CodecJson[RequestTimeFilterPostcodeDistrictsProperty] = CodecJson.derive[RequestTimeFilterPostcodeDistrictsProperty]
  implicit val RequestTimeFilterPostcodeDistrictsPropertyDecoder: EntityDecoder[RequestTimeFilterPostcodeDistrictsProperty] = jsonOf[RequestTimeFilterPostcodeDistrictsProperty]
  implicit val RequestTimeFilterPostcodeDistrictsPropertyEncoder: EntityEncoder[RequestTimeFilterPostcodeDistrictsProperty] = jsonEncoderOf[RequestTimeFilterPostcodeDistrictsProperty]
}
