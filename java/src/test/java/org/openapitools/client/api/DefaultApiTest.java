/*
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.api;

import org.openapitools.client.ApiException;
import org.openapitools.client.model.RequestRoutes;
import org.openapitools.client.model.RequestSupportedLocations;
import org.openapitools.client.model.RequestTimeFilter;
import org.openapitools.client.model.RequestTimeFilterFast;
import org.openapitools.client.model.RequestTimeFilterPostcodeDistricts;
import org.openapitools.client.model.RequestTimeFilterPostcodeSectors;
import org.openapitools.client.model.RequestTimeFilterPostcodes;
import org.openapitools.client.model.RequestTimeMap;
import org.openapitools.client.model.ResponseError;
import org.openapitools.client.model.ResponseGeocoding;
import org.openapitools.client.model.ResponseMapInfo;
import org.openapitools.client.model.ResponseRoutes;
import org.openapitools.client.model.ResponseSupportedLocations;
import org.openapitools.client.model.ResponseTimeFilter;
import org.openapitools.client.model.ResponseTimeFilterFast;
import org.openapitools.client.model.ResponseTimeFilterPostcodeDistricts;
import org.openapitools.client.model.ResponseTimeFilterPostcodeSectors;
import org.openapitools.client.model.ResponseTimeFilterPostcodes;
import org.openapitools.client.model.ResponseTimeMap;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for DefaultApi
 */
@Ignore
public class DefaultApiTest {

    private final DefaultApi api = new DefaultApi();

    
    /**
     * 
     *
     * 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void geocodingReverseSearchTest() throws ApiException {
        Double lat = null;
        Double lng = null;
        String withinCountry = null;
        ResponseGeocoding response = api.geocodingReverseSearch(lat, lng, withinCountry);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void geocodingSearchTest() throws ApiException {
        String query = null;
        Double focusLat = null;
        Double focusLng = null;
        String withinCountry = null;
        ResponseGeocoding response = api.geocodingSearch(query, focusLat, focusLng, withinCountry);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void mapInfoTest() throws ApiException {
        ResponseMapInfo response = api.mapInfo();

        // TODO: test validations
    }
    
    /**
     * 
     *
     * 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void routesTest() throws ApiException {
        RequestRoutes requestRoutes = null;
        ResponseRoutes response = api.routes(requestRoutes);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void supportedLocationsTest() throws ApiException {
        RequestSupportedLocations requestSupportedLocations = null;
        ResponseSupportedLocations response = api.supportedLocations(requestSupportedLocations);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void timeFilterTest() throws ApiException {
        RequestTimeFilter requestTimeFilter = null;
        ResponseTimeFilter response = api.timeFilter(requestTimeFilter);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void timeFilterFastTest() throws ApiException {
        RequestTimeFilterFast requestTimeFilterFast = null;
        ResponseTimeFilterFast response = api.timeFilterFast(requestTimeFilterFast);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void timeFilterPostcodeDistrictsTest() throws ApiException {
        RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts = null;
        ResponseTimeFilterPostcodeDistricts response = api.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void timeFilterPostcodeSectorsTest() throws ApiException {
        RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors = null;
        ResponseTimeFilterPostcodeSectors response = api.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void timeFilterPostcodesTest() throws ApiException {
        RequestTimeFilterPostcodes requestTimeFilterPostcodes = null;
        ResponseTimeFilterPostcodes response = api.timeFilterPostcodes(requestTimeFilterPostcodes);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void timeMapTest() throws ApiException {
        RequestTimeMap requestTimeMap = null;
        ResponseTimeMap response = api.timeMap(requestTimeMap);

        // TODO: test validations
    }
    
}
