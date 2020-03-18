namespace OpenAPI.Tests

open System
open System.Net
open System.Net.Http
open System.IO
open Microsoft.AspNetCore.Builder
open Microsoft.AspNetCore.Hosting
open Microsoft.AspNetCore.TestHost
open Microsoft.Extensions.DependencyInjection
open FSharp.Control.Tasks.V2.ContextInsensitive
open Xunit
open System.Text
open Newtonsoft
open TestHelper
open DefaultApiHandlerTestsHelper
open OpenAPI.DefaultApiHandler
open OpenAPI.DefaultApiHandlerParams
open OpenAPI.Model.RequestRoutes
open OpenAPI.Model.RequestSupportedLocations
open OpenAPI.Model.RequestTimeFilter
open OpenAPI.Model.RequestTimeFilterFast
open OpenAPI.Model.RequestTimeFilterPostcodeDistricts
open OpenAPI.Model.RequestTimeFilterPostcodeSectors
open OpenAPI.Model.RequestTimeFilterPostcodes
open OpenAPI.Model.RequestTimeMap
open OpenAPI.Model.ResponseError
open OpenAPI.Model.ResponseGeocoding
open OpenAPI.Model.ResponseMapInfo
open OpenAPI.Model.ResponseRoutes
open OpenAPI.Model.ResponseSupportedLocations
open OpenAPI.Model.ResponseTimeFilter
open OpenAPI.Model.ResponseTimeFilterFast
open OpenAPI.Model.ResponseTimeFilterPostcodeDistricts
open OpenAPI.Model.ResponseTimeFilterPostcodeSectors
open OpenAPI.Model.ResponseTimeFilterPostcodes
open OpenAPI.Model.ResponseTimeMap

module DefaultApiHandlerTests =

  // ---------------------------------
  // Tests
  // ---------------------------------

  [<Fact>]
  let ``GeocodingReverseSearch -  returns 200 where Match a query string to geographic coordinates. [Docs link](http://docs.traveltimeplatform.com/reference/geocoding-search/)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/geocoding/reverse" + "?lat=ADDME&lng=ADDME&withinCountry=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GeocodingReverseSearch -  returns 0 where The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/geocoding/reverse" + "?lat=ADDME&lng=ADDME&withinCountry=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(0))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GeocodingSearch -  returns 200 where Match a query string to geographic coordinates. [Docs link](http://docs.traveltimeplatform.com/reference/geocoding-search/)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/geocoding/search" + "?query=ADDME&focusLat=ADDME&focusLng=ADDME&withinCountry=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``GeocodingSearch -  returns 0 where The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/geocoding/search" + "?query=ADDME&focusLat=ADDME&focusLng=ADDME&withinCountry=ADDME"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(0))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``MapInfo -  returns 200 where Returns information about currently supported countries. [Docs link](http://docs.traveltimeplatform.com/reference/map-info/)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/map-info"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``MapInfo -  returns 0 where The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/map-info"

      HttpGet client path
        |> isStatus (enum<HttpStatusCode>(0))
        |> readText
        |> shouldEqual "TESTME"
        |> ignore
      }

  [<Fact>]
  let ``Routes -  returns 200 where Returns routing information between source and destinations. [Docs link](http://docs.traveltimeplatform.com/reference/routes/)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/routes"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getRoutesExample "application/json")
      // or pass a body of type RequestRoutes
      let body = obj() :?> RequestRoutes |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``Routes -  returns 0 where The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/routes"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getRoutesExample "application/json")
      // or pass a body of type RequestRoutes
      let body = obj() :?> RequestRoutes |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(0))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``SupportedLocations -  returns 200 where Find out what points are supported by our api. [Docs link](http://docs.traveltimeplatform.com/reference/supported-locations/)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/supported-locations"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getSupportedLocationsExample "application/json")
      // or pass a body of type RequestSupportedLocations
      let body = obj() :?> RequestSupportedLocations |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``SupportedLocations -  returns 0 where The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/supported-locations"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getSupportedLocationsExample "application/json")
      // or pass a body of type RequestSupportedLocations
      let body = obj() :?> RequestSupportedLocations |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(0))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``TimeFilter -  returns 200 where Given origin and destination points filter out points that cannot be reached within specified time limit. [Docs link](http://docs.traveltimeplatform.com/reference/time-filter)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/time-filter"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getTimeFilterExample "application/json")
      // or pass a body of type RequestTimeFilter
      let body = obj() :?> RequestTimeFilter |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``TimeFilter -  returns 0 where The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/time-filter"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getTimeFilterExample "application/json")
      // or pass a body of type RequestTimeFilter
      let body = obj() :?> RequestTimeFilter |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(0))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``TimeFilterFast -  returns 200 where A very fast version of Time Filter. [Docs link](http://docs.traveltimeplatform.com/reference/time-filter-fast/)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/time-filter/fast"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getTimeFilterFastExample "application/json")
      // or pass a body of type RequestTimeFilterFast
      let body = obj() :?> RequestTimeFilterFast |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``TimeFilterFast -  returns 0 where The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/time-filter/fast"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getTimeFilterFastExample "application/json")
      // or pass a body of type RequestTimeFilterFast
      let body = obj() :?> RequestTimeFilterFast |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(0))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``TimeFilterPostcodeDistricts -  returns 200 where Find districts that have a certain coverage from origin and get statistics about postcodes within such districts. [Docs link](http://docs.traveltimeplatform.com/reference/postcode-district-filter/)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/time-filter/postcode-districts"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getTimeFilterPostcodeDistrictsExample "application/json")
      // or pass a body of type RequestTimeFilterPostcodeDistricts
      let body = obj() :?> RequestTimeFilterPostcodeDistricts |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``TimeFilterPostcodeDistricts -  returns 0 where The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/time-filter/postcode-districts"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getTimeFilterPostcodeDistrictsExample "application/json")
      // or pass a body of type RequestTimeFilterPostcodeDistricts
      let body = obj() :?> RequestTimeFilterPostcodeDistricts |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(0))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``TimeFilterPostcodeSectors -  returns 200 where Find sectors that have a certain coverage from origin and get statistics about postcodes within such sectors. [Docs link](http://docs.traveltimeplatform.com/reference/postcode-sector-filter/)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/time-filter/postcode-sectors"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getTimeFilterPostcodeSectorsExample "application/json")
      // or pass a body of type RequestTimeFilterPostcodeSectors
      let body = obj() :?> RequestTimeFilterPostcodeSectors |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``TimeFilterPostcodeSectors -  returns 0 where The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/time-filter/postcode-sectors"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getTimeFilterPostcodeSectorsExample "application/json")
      // or pass a body of type RequestTimeFilterPostcodeSectors
      let body = obj() :?> RequestTimeFilterPostcodeSectors |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(0))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``TimeFilterPostcodes -  returns 200 where Find reachable postcodes from origin and get statistics about such postcodes. [Docs link](http://docs.traveltimeplatform.com/reference/postcode-search/)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/time-filter/postcodes"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getTimeFilterPostcodesExample "application/json")
      // or pass a body of type RequestTimeFilterPostcodes
      let body = obj() :?> RequestTimeFilterPostcodes |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``TimeFilterPostcodes -  returns 0 where The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/time-filter/postcodes"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getTimeFilterPostcodesExample "application/json")
      // or pass a body of type RequestTimeFilterPostcodes
      let body = obj() :?> RequestTimeFilterPostcodes |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(0))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``TimeMap -  returns 200 where Given origin coordinates, find shapes of zones reachable within corresponding travel time. [Docs link](http://docs.traveltimeplatform.com/reference/time-map/)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/time-map"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getTimeMapExample "application/json")
      // or pass a body of type RequestTimeMap
      let body = obj() :?> RequestTimeMap |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(200))
        |> readText
        |> shouldEqual "TESTME"
      }

  [<Fact>]
  let ``TimeMap -  returns 0 where The json body returned upon error. [Docs link](http://docs.traveltimeplatform.com/reference/error-response)`` () =
    task {
      use server = new TestServer(createHost())
      use client = server.CreateClient()

      // add your setup code here

      let path = "/v4/time-map"

      // use an example requestBody provided by the spec
      let examples = Map.empty.Add("application/json", getTimeMapExample "application/json")
      // or pass a body of type RequestTimeMap
      let body = obj() :?> RequestTimeMap |> Newtonsoft.Json.JsonConvert.SerializeObject |> Encoding.UTF8.GetBytes |> MemoryStream |> StreamContent

      body
        |> HttpPost client path
        |> isStatus (enum<HttpStatusCode>(0))
        |> readText
        |> shouldEqual "TESTME"
      }

