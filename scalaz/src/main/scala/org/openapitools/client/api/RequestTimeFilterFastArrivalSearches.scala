package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import RequestTimeFilterFastArrivalSearches._

case class RequestTimeFilterFastArrivalSearches (
  manyToOne: Option[List[RequestTimeFilterFastArrivalManyToOneSearch]],
oneToMany: Option[List[RequestTimeFilterFastArrivalOneToManySearch]])

object RequestTimeFilterFastArrivalSearches {
  import DateTimeCodecs._

  implicit val RequestTimeFilterFastArrivalSearchesCodecJson: CodecJson[RequestTimeFilterFastArrivalSearches] = CodecJson.derive[RequestTimeFilterFastArrivalSearches]
  implicit val RequestTimeFilterFastArrivalSearchesDecoder: EntityDecoder[RequestTimeFilterFastArrivalSearches] = jsonOf[RequestTimeFilterFastArrivalSearches]
  implicit val RequestTimeFilterFastArrivalSearchesEncoder: EntityEncoder[RequestTimeFilterFastArrivalSearches] = jsonEncoderOf[RequestTimeFilterFastArrivalSearches]
}
