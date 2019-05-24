namespace traveltimeplatform.Tests

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
open traveltimeplatform.DefaultApiHandler
open traveltimeplatform.DefaultApiHandlerParams
open traveltimeplatform.Model.RequestRoutes
open traveltimeplatform.Model.RequestSupportedLocations
open traveltimeplatform.Model.RequestTimeFilter
open traveltimeplatform.Model.RequestTimeFilterFast
open traveltimeplatform.Model.RequestTimeFilterPostcodeDistricts
open traveltimeplatform.Model.RequestTimeFilterPostcodeSectors
open traveltimeplatform.Model.RequestTimeFilterPostcodes
open traveltimeplatform.Model.RequestTimeMap
open traveltimeplatform.Model.ResponseError
open traveltimeplatform.Model.ResponseGeocoding
open traveltimeplatform.Model.ResponseMapInfo
open traveltimeplatform.Model.ResponseRoutes
open traveltimeplatform.Model.ResponseSupportedLocations
open traveltimeplatform.Model.ResponseTimeFilter
open traveltimeplatform.Model.ResponseTimeFilterFast
open traveltimeplatform.Model.ResponseTimeFilterPostcodeDistricts
open traveltimeplatform.Model.ResponseTimeFilterPostcodeSectors
open traveltimeplatform.Model.ResponseTimeFilterPostcodes
open traveltimeplatform.Model.ResponseTimeMap

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

      let path = "/v4/geocoding/reverse" + "?focusLat=ADDME&focusLng=ADDME&withinCountry=ADDME"

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

      let path = "/v4/geocoding/reverse" + "?focusLat=ADDME&focusLng=ADDME&withinCountry=ADDME"

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

      let path = "/v4/geocoding/search" + "?query=ADDME&withinCountry=ADDME&focusLat=ADDME&focusLng=ADDME"

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

      let path = "/v4/geocoding/search" + "?query=ADDME&withinCountry=ADDME&focusLat=ADDME&focusLng=ADDME"

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

