package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import java.io.File
import java.net.URLEncoder
import java.util.UUID

import org.http4s._
import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.http4s.client._
import org.http4s.client.blaze.PooledHttp1Client
import org.http4s.headers._

import org.joda.time.DateTime

import scalaz.concurrent.Task

import HelperCodecs._

object DefaultApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def geocodingReverseSearch(host: String, focusLat: Double, focusLng: Double, withinCountry: String)(implicit focusLatQuery: QueryParam[Double], focusLngQuery: QueryParam[Double], withinCountryQuery: QueryParam[String]): Task[ResponseGeocoding] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseGeocoding] = jsonOf[ResponseGeocoding]

    val path = "/v4/geocoding/reverse"
    
    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("focusLat", Some(focus.latQuery.toParamString(focus.lat))), ("focusLng", Some(focus.lngQuery.toParamString(focus.lng))), ("withinCountry", Some(within.countryQuery.toParamString(within.country))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ResponseGeocoding](req)

    } yield resp
  }
  
  def geocodingSearch(host: String, query: String, withinCountry: String, focusLat: Double, focusLng: Double)(implicit queryQuery: QueryParam[String], withinCountryQuery: QueryParam[String], focusLatQuery: QueryParam[Double], focusLngQuery: QueryParam[Double]): Task[ResponseGeocoding] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseGeocoding] = jsonOf[ResponseGeocoding]

    val path = "/v4/geocoding/search"
    
    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("query", Some(queryQuery.toParamString(query))), ("withinCountry", Some(within.countryQuery.toParamString(within.country))), ("focusLat", Some(focus.latQuery.toParamString(focus.lat))), ("focusLng", Some(focus.lngQuery.toParamString(focus.lng))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ResponseGeocoding](req)

    } yield resp
  }
  
  def mapInfo(host: String): Task[ResponseMapInfo] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseMapInfo] = jsonOf[ResponseMapInfo]

    val path = "/v4/map-info"
    
    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ResponseMapInfo](req)

    } yield resp
  }
  
  def routes(host: String, requestRoutes: RequestRoutes): Task[ResponseRoutes] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseRoutes] = jsonOf[ResponseRoutes]

    val path = "/v4/routes"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestRoutes)
      resp          <- client.expect[ResponseRoutes](req)

    } yield resp
  }
  
  def supportedLocations(host: String, requestSupportedLocations: RequestSupportedLocations): Task[ResponseSupportedLocations] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseSupportedLocations] = jsonOf[ResponseSupportedLocations]

    val path = "/v4/supported-locations"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestSupportedLocations)
      resp          <- client.expect[ResponseSupportedLocations](req)

    } yield resp
  }
  
  def timeFilter(host: String, requestTimeFilter: RequestTimeFilter): Task[ResponseTimeFilter] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseTimeFilter] = jsonOf[ResponseTimeFilter]

    val path = "/v4/time-filter"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestTimeFilter)
      resp          <- client.expect[ResponseTimeFilter](req)

    } yield resp
  }
  
  def timeFilterFast(host: String, requestTimeFilterFast: RequestTimeFilterFast): Task[ResponseTimeFilterFast] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseTimeFilterFast] = jsonOf[ResponseTimeFilterFast]

    val path = "/v4/time-filter/fast"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestTimeFilterFast)
      resp          <- client.expect[ResponseTimeFilterFast](req)

    } yield resp
  }
  
  def timeFilterPostcodeDistricts(host: String, requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts): Task[ResponseTimeFilterPostcodeDistricts] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseTimeFilterPostcodeDistricts] = jsonOf[ResponseTimeFilterPostcodeDistricts]

    val path = "/v4/time-filter/postcode-districts"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestTimeFilterPostcodeDistricts)
      resp          <- client.expect[ResponseTimeFilterPostcodeDistricts](req)

    } yield resp
  }
  
  def timeFilterPostcodeSectors(host: String, requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors): Task[ResponseTimeFilterPostcodeSectors] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseTimeFilterPostcodeSectors] = jsonOf[ResponseTimeFilterPostcodeSectors]

    val path = "/v4/time-filter/postcode-sectors"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestTimeFilterPostcodeSectors)
      resp          <- client.expect[ResponseTimeFilterPostcodeSectors](req)

    } yield resp
  }
  
  def timeFilterPostcodes(host: String, requestTimeFilterPostcodes: RequestTimeFilterPostcodes): Task[ResponseTimeFilterPostcodes] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseTimeFilterPostcodes] = jsonOf[ResponseTimeFilterPostcodes]

    val path = "/v4/time-filter/postcodes"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestTimeFilterPostcodes)
      resp          <- client.expect[ResponseTimeFilterPostcodes](req)

    } yield resp
  }
  
  def timeMap(host: String, requestTimeMap: RequestTimeMap): Task[ResponseTimeMap] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseTimeMap] = jsonOf[ResponseTimeMap]

    val path = "/v4/time-map"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestTimeMap)
      resp          <- client.expect[ResponseTimeMap](req)

    } yield resp
  }
  
}

class HttpServiceDefaultApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def geocodingReverseSearch(focusLat: Double, focusLng: Double, withinCountry: String)(implicit focusLatQuery: QueryParam[Double], focusLngQuery: QueryParam[Double], withinCountryQuery: QueryParam[String]): Task[ResponseGeocoding] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseGeocoding] = jsonOf[ResponseGeocoding]

    val path = "/v4/geocoding/reverse"
    
    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("focusLat", Some(focus.latQuery.toParamString(focus.lat))), ("focusLng", Some(focus.lngQuery.toParamString(focus.lng))), ("withinCountry", Some(within.countryQuery.toParamString(within.country))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ResponseGeocoding](req)

    } yield resp
  }
  
  def geocodingSearch(query: String, withinCountry: String, focusLat: Double, focusLng: Double)(implicit queryQuery: QueryParam[String], withinCountryQuery: QueryParam[String], focusLatQuery: QueryParam[Double], focusLngQuery: QueryParam[Double]): Task[ResponseGeocoding] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseGeocoding] = jsonOf[ResponseGeocoding]

    val path = "/v4/geocoding/search"
    
    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("query", Some(queryQuery.toParamString(query))), ("withinCountry", Some(within.countryQuery.toParamString(within.country))), ("focusLat", Some(focus.latQuery.toParamString(focus.lat))), ("focusLng", Some(focus.lngQuery.toParamString(focus.lng))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ResponseGeocoding](req)

    } yield resp
  }
  
  def mapInfo(): Task[ResponseMapInfo] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseMapInfo] = jsonOf[ResponseMapInfo]

    val path = "/v4/map-info"
    
    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ResponseMapInfo](req)

    } yield resp
  }
  
  def routes(requestRoutes: RequestRoutes): Task[ResponseRoutes] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseRoutes] = jsonOf[ResponseRoutes]

    val path = "/v4/routes"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestRoutes)
      resp          <- client.expect[ResponseRoutes](req)

    } yield resp
  }
  
  def supportedLocations(requestSupportedLocations: RequestSupportedLocations): Task[ResponseSupportedLocations] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseSupportedLocations] = jsonOf[ResponseSupportedLocations]

    val path = "/v4/supported-locations"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestSupportedLocations)
      resp          <- client.expect[ResponseSupportedLocations](req)

    } yield resp
  }
  
  def timeFilter(requestTimeFilter: RequestTimeFilter): Task[ResponseTimeFilter] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseTimeFilter] = jsonOf[ResponseTimeFilter]

    val path = "/v4/time-filter"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestTimeFilter)
      resp          <- client.expect[ResponseTimeFilter](req)

    } yield resp
  }
  
  def timeFilterFast(requestTimeFilterFast: RequestTimeFilterFast): Task[ResponseTimeFilterFast] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseTimeFilterFast] = jsonOf[ResponseTimeFilterFast]

    val path = "/v4/time-filter/fast"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestTimeFilterFast)
      resp          <- client.expect[ResponseTimeFilterFast](req)

    } yield resp
  }
  
  def timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts): Task[ResponseTimeFilterPostcodeDistricts] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseTimeFilterPostcodeDistricts] = jsonOf[ResponseTimeFilterPostcodeDistricts]

    val path = "/v4/time-filter/postcode-districts"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestTimeFilterPostcodeDistricts)
      resp          <- client.expect[ResponseTimeFilterPostcodeDistricts](req)

    } yield resp
  }
  
  def timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors): Task[ResponseTimeFilterPostcodeSectors] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseTimeFilterPostcodeSectors] = jsonOf[ResponseTimeFilterPostcodeSectors]

    val path = "/v4/time-filter/postcode-sectors"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestTimeFilterPostcodeSectors)
      resp          <- client.expect[ResponseTimeFilterPostcodeSectors](req)

    } yield resp
  }
  
  def timeFilterPostcodes(requestTimeFilterPostcodes: RequestTimeFilterPostcodes): Task[ResponseTimeFilterPostcodes] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseTimeFilterPostcodes] = jsonOf[ResponseTimeFilterPostcodes]

    val path = "/v4/time-filter/postcodes"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestTimeFilterPostcodes)
      resp          <- client.expect[ResponseTimeFilterPostcodes](req)

    } yield resp
  }
  
  def timeMap(requestTimeMap: RequestTimeMap): Task[ResponseTimeMap] = {
    implicit val returnTypeDecoder: EntityDecoder[ResponseTimeMap] = jsonOf[ResponseTimeMap]

    val path = "/v4/time-map"
    
    val httpMethod = Method.POST
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType)).withBody(requestTimeMap)
      resp          <- client.expect[ResponseTimeMap](req)

    } yield resp
  }
  
}
