package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class DefaultApiSimulation extends Simulation {

    def getCurrentDirectory = new File("").getAbsolutePath
    def userDataDirectory = getCurrentDirectory + "/src/gatling/resources/data"

    // basic test setup
    val configName = System.getProperty("testConfig", "baseline")
    val config = ConfigFactory.load(configName).withFallback(ConfigFactory.load("default"))
    val durationSeconds = config.getInt("performance.durationSeconds")
    val rampUpSeconds = config.getInt("performance.rampUpSeconds")
    val rampDownSeconds = config.getInt("performance.rampDownSeconds")
    val authentication = config.getString("performance.authorizationHeader")
    val acceptHeader = config.getString("performance.acceptType")
    val contentTypeHeader = config.getString("performance.contentType")
    val rateMultiplier = config.getDouble("performance.rateMultiplier")
    val instanceMultiplier = config.getDouble("performance.instanceMultiplier")

    // global assertion data
    val globalResponseTimeMinLTE = config.getInt("performance.global.assertions.responseTime.min.lte")
    val globalResponseTimeMinGTE = config.getInt("performance.global.assertions.responseTime.min.gte")
    val globalResponseTimeMaxLTE = config.getInt("performance.global.assertions.responseTime.max.lte")
    val globalResponseTimeMaxGTE = config.getInt("performance.global.assertions.responseTime.max.gte")
    val globalResponseTimeMeanLTE = config.getInt("performance.global.assertions.responseTime.mean.lte")
    val globalResponseTimeMeanGTE = config.getInt("performance.global.assertions.responseTime.mean.gte")
    val globalResponseTimeFailedRequestsPercentLTE = config.getDouble("performance.global.assertions.failedRequests.percent.lte")
    val globalResponseTimeFailedRequestsPercentGTE = config.getDouble("performance.global.assertions.failedRequests.percent.gte")
    val globalResponseTimeSuccessfulRequestsPercentLTE = config.getDouble("performance.global.assertions.successfulRequests.percent.lte")
    val globalResponseTimeSuccessfulRequestsPercentGTE = config.getDouble("performance.global.assertions.successfulRequests.percent.gte")

// Setup http protocol configuration
    val httpConf = http
        .baseURL("https://api.traveltimeapp.com")
        .doNotTrackHeader("1")
        .acceptLanguageHeader("en-US,en;q=0.5")
        .acceptEncodingHeader("gzip, deflate")
        .userAgentHeader("Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0")
        .acceptHeader(acceptHeader)
        .contentTypeHeader(contentTypeHeader)

    // set authorization header if it has been modified from config
    if(!authentication.equals("~MANUAL_ENTRY")){
        httpConf.authorizationHeader(authentication)
    }

    // Setup all the operations per second for the test to ultimately be generated from configs
    val geocodingReverseSearchPerSecond = config.getDouble("performance.operationsPerSecond.geocodingReverseSearch") * rateMultiplier * instanceMultiplier
    val geocodingSearchPerSecond = config.getDouble("performance.operationsPerSecond.geocodingSearch") * rateMultiplier * instanceMultiplier
    val mapInfoPerSecond = config.getDouble("performance.operationsPerSecond.mapInfo") * rateMultiplier * instanceMultiplier
    val routesPerSecond = config.getDouble("performance.operationsPerSecond.routes") * rateMultiplier * instanceMultiplier
    val supportedLocationsPerSecond = config.getDouble("performance.operationsPerSecond.supportedLocations") * rateMultiplier * instanceMultiplier
    val timeFilterPerSecond = config.getDouble("performance.operationsPerSecond.timeFilter") * rateMultiplier * instanceMultiplier
    val timeFilterFastPerSecond = config.getDouble("performance.operationsPerSecond.timeFilterFast") * rateMultiplier * instanceMultiplier
    val timeFilterPostcodeDistrictsPerSecond = config.getDouble("performance.operationsPerSecond.timeFilterPostcodeDistricts") * rateMultiplier * instanceMultiplier
    val timeFilterPostcodeSectorsPerSecond = config.getDouble("performance.operationsPerSecond.timeFilterPostcodeSectors") * rateMultiplier * instanceMultiplier
    val timeFilterPostcodesPerSecond = config.getDouble("performance.operationsPerSecond.timeFilterPostcodes") * rateMultiplier * instanceMultiplier
    val timeMapPerSecond = config.getDouble("performance.operationsPerSecond.timeMap") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val geocodingReverseSearchQUERYFeeder = csv(userDataDirectory + File.separator + "geocodingReverseSearch-queryParams.csv").random
    val geocodingSearchQUERYFeeder = csv(userDataDirectory + File.separator + "geocodingSearch-queryParams.csv").random

    // Setup all scenarios

    
    val scngeocodingReverseSearch = scenario("geocodingReverseSearchSimulation")
        .feed(geocodingReverseSearchQUERYFeeder)
        .exec(http("geocodingReverseSearch")
        .httpRequest("GET","/v4/geocoding/reverse")
        .queryParam("within.country","${within.country}")
        .queryParam("lng","${lng}")
        .queryParam("lat","${lat}")
)

    // Run scngeocodingReverseSearch with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngeocodingReverseSearch.inject(
        rampUsersPerSec(1) to(geocodingReverseSearchPerSecond) during(rampUpSeconds),
        constantUsersPerSec(geocodingReverseSearchPerSecond) during(durationSeconds),
        rampUsersPerSec(geocodingReverseSearchPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scngeocodingSearch = scenario("geocodingSearchSimulation")
        .feed(geocodingSearchQUERYFeeder)
        .exec(http("geocodingSearch")
        .httpRequest("GET","/v4/geocoding/search")
        .queryParam("focus.lat","${focus.lat}")
        .queryParam("within.country","${within.country}")
        .queryParam("focus.lng","${focus.lng}")
        .queryParam("query","${query}")
)

    // Run scngeocodingSearch with warm up and reach a constant rate for entire duration
    scenarioBuilders += scngeocodingSearch.inject(
        rampUsersPerSec(1) to(geocodingSearchPerSecond) during(rampUpSeconds),
        constantUsersPerSec(geocodingSearchPerSecond) during(durationSeconds),
        rampUsersPerSec(geocodingSearchPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmapInfo = scenario("mapInfoSimulation")
        .exec(http("mapInfo")
        .httpRequest("GET","/v4/map-info")
)

    // Run scnmapInfo with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmapInfo.inject(
        rampUsersPerSec(1) to(mapInfoPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mapInfoPerSecond) during(durationSeconds),
        rampUsersPerSec(mapInfoPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnroutes = scenario("routesSimulation")
        .exec(http("routes")
        .httpRequest("POST","/v4/routes")
)

    // Run scnroutes with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnroutes.inject(
        rampUsersPerSec(1) to(routesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(routesPerSecond) during(durationSeconds),
        rampUsersPerSec(routesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnsupportedLocations = scenario("supportedLocationsSimulation")
        .exec(http("supportedLocations")
        .httpRequest("POST","/v4/supported-locations")
)

    // Run scnsupportedLocations with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnsupportedLocations.inject(
        rampUsersPerSec(1) to(supportedLocationsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(supportedLocationsPerSecond) during(durationSeconds),
        rampUsersPerSec(supportedLocationsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scntimeFilter = scenario("timeFilterSimulation")
        .exec(http("timeFilter")
        .httpRequest("POST","/v4/time-filter")
)

    // Run scntimeFilter with warm up and reach a constant rate for entire duration
    scenarioBuilders += scntimeFilter.inject(
        rampUsersPerSec(1) to(timeFilterPerSecond) during(rampUpSeconds),
        constantUsersPerSec(timeFilterPerSecond) during(durationSeconds),
        rampUsersPerSec(timeFilterPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scntimeFilterFast = scenario("timeFilterFastSimulation")
        .exec(http("timeFilterFast")
        .httpRequest("POST","/v4/time-filter/fast")
)

    // Run scntimeFilterFast with warm up and reach a constant rate for entire duration
    scenarioBuilders += scntimeFilterFast.inject(
        rampUsersPerSec(1) to(timeFilterFastPerSecond) during(rampUpSeconds),
        constantUsersPerSec(timeFilterFastPerSecond) during(durationSeconds),
        rampUsersPerSec(timeFilterFastPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scntimeFilterPostcodeDistricts = scenario("timeFilterPostcodeDistrictsSimulation")
        .exec(http("timeFilterPostcodeDistricts")
        .httpRequest("POST","/v4/time-filter/postcode-districts")
)

    // Run scntimeFilterPostcodeDistricts with warm up and reach a constant rate for entire duration
    scenarioBuilders += scntimeFilterPostcodeDistricts.inject(
        rampUsersPerSec(1) to(timeFilterPostcodeDistrictsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(timeFilterPostcodeDistrictsPerSecond) during(durationSeconds),
        rampUsersPerSec(timeFilterPostcodeDistrictsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scntimeFilterPostcodeSectors = scenario("timeFilterPostcodeSectorsSimulation")
        .exec(http("timeFilterPostcodeSectors")
        .httpRequest("POST","/v4/time-filter/postcode-sectors")
)

    // Run scntimeFilterPostcodeSectors with warm up and reach a constant rate for entire duration
    scenarioBuilders += scntimeFilterPostcodeSectors.inject(
        rampUsersPerSec(1) to(timeFilterPostcodeSectorsPerSecond) during(rampUpSeconds),
        constantUsersPerSec(timeFilterPostcodeSectorsPerSecond) during(durationSeconds),
        rampUsersPerSec(timeFilterPostcodeSectorsPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scntimeFilterPostcodes = scenario("timeFilterPostcodesSimulation")
        .exec(http("timeFilterPostcodes")
        .httpRequest("POST","/v4/time-filter/postcodes")
)

    // Run scntimeFilterPostcodes with warm up and reach a constant rate for entire duration
    scenarioBuilders += scntimeFilterPostcodes.inject(
        rampUsersPerSec(1) to(timeFilterPostcodesPerSecond) during(rampUpSeconds),
        constantUsersPerSec(timeFilterPostcodesPerSecond) during(durationSeconds),
        rampUsersPerSec(timeFilterPostcodesPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scntimeMap = scenario("timeMapSimulation")
        .exec(http("timeMap")
        .httpRequest("POST","/v4/time-map")
)

    // Run scntimeMap with warm up and reach a constant rate for entire duration
    scenarioBuilders += scntimeMap.inject(
        rampUsersPerSec(1) to(timeMapPerSecond) during(rampUpSeconds),
        constantUsersPerSec(timeMapPerSecond) during(durationSeconds),
        rampUsersPerSec(timeMapPerSecond) to(1) during(rampDownSeconds)
    )

    setUp(
        scenarioBuilders.toList
    ).protocols(httpConf).assertions(
        global.responseTime.min.lte(globalResponseTimeMinLTE),
        global.responseTime.min.gte(globalResponseTimeMinGTE),
        global.responseTime.max.lte(globalResponseTimeMaxLTE),
        global.responseTime.max.gte(globalResponseTimeMaxGTE),
        global.responseTime.mean.lte(globalResponseTimeMeanLTE),
        global.responseTime.mean.gte(globalResponseTimeMeanGTE),
        global.failedRequests.percent.lte(globalResponseTimeFailedRequestsPercentLTE),
        global.failedRequests.percent.gte(globalResponseTimeFailedRequestsPercentGTE),
        global.successfulRequests.percent.lte(globalResponseTimeSuccessfulRequestsPercentLTE),
        global.successfulRequests.percent.gte(globalResponseTimeSuccessfulRequestsPercentGTE)
    )
}
