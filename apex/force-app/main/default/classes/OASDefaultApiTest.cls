@isTest
private class OASDefaultApiTest {
    /**
     * 
     *
     * 
     */
    @isTest
    private static void geocodingReverseSearchTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'lat' => '',
            'lng' => '',
            'withinCountry' => 'null'
        };

        OASClient client;
        OASDefaultApi api;
        OASResponseGeocoding response;
        OASResponseGeocoding expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseGeocoding.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseGeocoding.getExample();
        response = (OASResponseGeocoding) api.geocodingReverseSearch(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApplicationId')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseGeocoding.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseGeocoding.getExample();
        response = (OASResponseGeocoding) api.geocodingReverseSearch(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void geocodingSearchTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'query' => 'null',
            'focusLat' => '',
            'focusLng' => '',
            'withinCountry' => 'null'
        };

        OASClient client;
        OASDefaultApi api;
        OASResponseGeocoding response;
        OASResponseGeocoding expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseGeocoding.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseGeocoding.getExample();
        response = (OASResponseGeocoding) api.geocodingSearch(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApplicationId')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseGeocoding.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseGeocoding.getExample();
        response = (OASResponseGeocoding) api.geocodingSearch(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void mapInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASDefaultApi api;
        OASResponseMapInfo response;
        OASResponseMapInfo expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseMapInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseMapInfo.getExample();
        response = (OASResponseMapInfo) api.mapInfo();
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApplicationId')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseMapInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseMapInfo.getExample();
        response = (OASResponseMapInfo) api.mapInfo();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void routesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSRequestRoutes' => ''
        };

        OASClient client;
        OASDefaultApi api;
        OASResponseRoutes response;
        OASResponseRoutes expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseRoutes.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseRoutes.getExample();
        response = (OASResponseRoutes) api.routes(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApplicationId')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseRoutes.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseRoutes.getExample();
        response = (OASResponseRoutes) api.routes(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void supportedLocationsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSRequestSupportedLocations' => ''
        };

        OASClient client;
        OASDefaultApi api;
        OASResponseSupportedLocations response;
        OASResponseSupportedLocations expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseSupportedLocations.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseSupportedLocations.getExample();
        response = (OASResponseSupportedLocations) api.supportedLocations(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApplicationId')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseSupportedLocations.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseSupportedLocations.getExample();
        response = (OASResponseSupportedLocations) api.supportedLocations(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void timeFilterTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSRequestTimeFilter' => ''
        };

        OASClient client;
        OASDefaultApi api;
        OASResponseTimeFilter response;
        OASResponseTimeFilter expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseTimeFilter.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseTimeFilter.getExample();
        response = (OASResponseTimeFilter) api.timeFilter(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApplicationId')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseTimeFilter.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseTimeFilter.getExample();
        response = (OASResponseTimeFilter) api.timeFilter(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void timeFilterFastTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSRequestTimeFilterFast' => ''
        };

        OASClient client;
        OASDefaultApi api;
        OASResponseTimeFilterFast response;
        OASResponseTimeFilterFast expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseTimeFilterFast.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseTimeFilterFast.getExample();
        response = (OASResponseTimeFilterFast) api.timeFilterFast(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApplicationId')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseTimeFilterFast.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseTimeFilterFast.getExample();
        response = (OASResponseTimeFilterFast) api.timeFilterFast(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void timeFilterPostcodeDistrictsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSRequestTimeFilterPostcodeDistrict' => ''
        };

        OASClient client;
        OASDefaultApi api;
        OASResponseTimeFilterPostcodeDistric response;
        OASResponseTimeFilterPostcodeDistric expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseTimeFilterPostcodeDistric.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseTimeFilterPostcodeDistric.getExample();
        response = (OASResponseTimeFilterPostcodeDistric) api.timeFilterPostcodeDistricts(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApplicationId')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseTimeFilterPostcodeDistric.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseTimeFilterPostcodeDistric.getExample();
        response = (OASResponseTimeFilterPostcodeDistric) api.timeFilterPostcodeDistricts(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void timeFilterPostcodeSectorsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSRequestTimeFilterPostcodeSectors' => ''
        };

        OASClient client;
        OASDefaultApi api;
        OASResponseTimeFilterPostcodeSectors response;
        OASResponseTimeFilterPostcodeSectors expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseTimeFilterPostcodeSectors.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseTimeFilterPostcodeSectors.getExample();
        response = (OASResponseTimeFilterPostcodeSectors) api.timeFilterPostcodeSectors(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApplicationId')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseTimeFilterPostcodeSectors.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseTimeFilterPostcodeSectors.getExample();
        response = (OASResponseTimeFilterPostcodeSectors) api.timeFilterPostcodeSectors(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void timeFilterPostcodesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSRequestTimeFilterPostcodes' => ''
        };

        OASClient client;
        OASDefaultApi api;
        OASResponseTimeFilterPostcodes response;
        OASResponseTimeFilterPostcodes expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseTimeFilterPostcodes.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseTimeFilterPostcodes.getExample();
        response = (OASResponseTimeFilterPostcodes) api.timeFilterPostcodes(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApplicationId')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseTimeFilterPostcodes.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseTimeFilterPostcodes.getExample();
        response = (OASResponseTimeFilterPostcodes) api.timeFilterPostcodes(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * 
     */
    @isTest
    private static void timeMapTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSRequestTimeMap' => ''
        };

        OASClient client;
        OASDefaultApi api;
        OASResponseTimeMap response;
        OASResponseTimeMap expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseTimeMap.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseTimeMap.getExample();
        response = (OASResponseTimeMap) api.timeMap(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASDefaultApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApplicationId')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASResponseTimeMap.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASResponseTimeMap.getExample();
        response = (OASResponseTimeMap) api.timeMap(params);
        System.assertEquals(expectedResponse, response);
    }
}