/**
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


package org.openapitools.api;

import org.openapitools.model.RequestRoutes;
import org.openapitools.model.RequestSupportedLocations;
import org.openapitools.model.RequestTimeFilter;
import org.openapitools.model.RequestTimeFilterFast;
import org.openapitools.model.RequestTimeFilterPostcodeDistricts;
import org.openapitools.model.RequestTimeFilterPostcodeSectors;
import org.openapitools.model.RequestTimeFilterPostcodes;
import org.openapitools.model.RequestTimeMap;
import org.openapitools.model.ResponseError;
import org.openapitools.model.ResponseGeocoding;
import org.openapitools.model.ResponseMapInfo;
import org.openapitools.model.ResponseRoutes;
import org.openapitools.model.ResponseSupportedLocations;
import org.openapitools.model.ResponseTimeFilter;
import org.openapitools.model.ResponseTimeFilterFast;
import org.openapitools.model.ResponseTimeFilterPostcodeDistricts;
import org.openapitools.model.ResponseTimeFilterPostcodeSectors;
import org.openapitools.model.ResponseTimeFilterPostcodes;
import org.openapitools.model.ResponseTimeMap;
import org.junit.Test;
import org.junit.Before;
import static org.junit.Assert.*;

import javax.ws.rs.core.Response;
import org.apache.cxf.jaxrs.client.JAXRSClientFactory;
import org.apache.cxf.jaxrs.client.ClientConfiguration;
import org.apache.cxf.jaxrs.client.WebClient;


import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;




/**
 * TravelTime API
 *
 * <p>No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * API tests for DefaultApi 
 */
public class DefaultApiTest {


    private DefaultApi api;
    
    @Before
    public void setup() {
        JacksonJsonProvider provider = new JacksonJsonProvider();
        List providers = new ArrayList();
        providers.add(provider);
        
        api = JAXRSClientFactory.create("https://api.traveltimeapp.com", DefaultApi.class, providers);
        org.apache.cxf.jaxrs.client.Client client = WebClient.client(api);
        
        ClientConfiguration config = WebClient.getConfig(client); 
    }

    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void geocodingReverseSearchTest() {
        Double lat = null;
        Double lng = null;
        String withinCountry = null;
        //ResponseGeocoding response = api.geocodingReverseSearch(lat, lng, withinCountry);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void geocodingSearchTest() {
        String query = null;
        Double focusLat = null;
        Double focusLng = null;
        String withinCountry = null;
        //ResponseGeocoding response = api.geocodingSearch(query, focusLat, focusLng, withinCountry);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void mapInfoTest() {
        //ResponseMapInfo response = api.mapInfo();
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void routesTest() {
        RequestRoutes requestRoutes = null;
        //ResponseRoutes response = api.routes(requestRoutes);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void supportedLocationsTest() {
        RequestSupportedLocations requestSupportedLocations = null;
        //ResponseSupportedLocations response = api.supportedLocations(requestSupportedLocations);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void timeFilterTest() {
        RequestTimeFilter requestTimeFilter = null;
        //ResponseTimeFilter response = api.timeFilter(requestTimeFilter);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void timeFilterFastTest() {
        RequestTimeFilterFast requestTimeFilterFast = null;
        //ResponseTimeFilterFast response = api.timeFilterFast(requestTimeFilterFast);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void timeFilterPostcodeDistrictsTest() {
        RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts = null;
        //ResponseTimeFilterPostcodeDistricts response = api.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void timeFilterPostcodeSectorsTest() {
        RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors = null;
        //ResponseTimeFilterPostcodeSectors response = api.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void timeFilterPostcodesTest() {
        RequestTimeFilterPostcodes requestTimeFilterPostcodes = null;
        //ResponseTimeFilterPostcodes response = api.timeFilterPostcodes(requestTimeFilterPostcodes);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
    /**
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void timeMapTest() {
        RequestTimeMap requestTimeMap = null;
        //ResponseTimeMap response = api.timeMap(requestTimeMap);
        //assertNotNull(response);
        // TODO: test validations
        
        
    }
    
}
