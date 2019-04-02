using System;
using System.Collections.Generic;
using RestSharp;
using Org.OpenAPITools.Client;
using traveltimeplatform.Model;

namespace traveltimeplatform.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IDefaultApi
    {
        /// <summary>
        ///  
        /// </summary>
        /// <param name="focusLat"></param>
        /// <param name="focusLng"></param>
        /// <param name="withinCountry"></param>
        /// <returns>ResponseGeocoding</returns>
        ResponseGeocoding GeocodingReverseSearch (double? focusLat, double? focusLng, string withinCountry);
        /// <summary>
        ///  
        /// </summary>
        /// <param name="query"></param>
        /// <param name="withinCountry"></param>
        /// <param name="focusLat"></param>
        /// <param name="focusLng"></param>
        /// <returns>ResponseGeocoding</returns>
        ResponseGeocoding GeocodingSearch (string query, string withinCountry, double? focusLat, double? focusLng);
        /// <summary>
        ///  
        /// </summary>
        /// <returns>ResponseMapInfo</returns>
        ResponseMapInfo MapInfo ();
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestRoutes"></param>
        /// <returns>ResponseRoutes</returns>
        ResponseRoutes Routes (RequestRoutes requestRoutes);
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestSupportedLocations"></param>
        /// <returns>ResponseSupportedLocations</returns>
        ResponseSupportedLocations SupportedLocations (RequestSupportedLocations requestSupportedLocations);
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestTimeFilter"></param>
        /// <returns>ResponseTimeFilter</returns>
        ResponseTimeFilter TimeFilter (RequestTimeFilter requestTimeFilter);
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestTimeFilterFast"></param>
        /// <returns>ResponseTimeFilterFast</returns>
        ResponseTimeFilterFast TimeFilterFast (RequestTimeFilterFast requestTimeFilterFast);
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestTimeFilterPostcodeDistricts"></param>
        /// <returns>ResponseTimeFilterPostcodeDistricts</returns>
        ResponseTimeFilterPostcodeDistricts TimeFilterPostcodeDistricts (RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts);
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestTimeFilterPostcodeSectors"></param>
        /// <returns>ResponseTimeFilterPostcodeSectors</returns>
        ResponseTimeFilterPostcodeSectors TimeFilterPostcodeSectors (RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors);
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestTimeFilterPostcodes"></param>
        /// <returns>ResponseTimeFilterPostcodes</returns>
        ResponseTimeFilterPostcodes TimeFilterPostcodes (RequestTimeFilterPostcodes requestTimeFilterPostcodes);
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestTimeMap"></param>
        /// <returns>ResponseTimeMap</returns>
        ResponseTimeMap TimeMap (RequestTimeMap requestTimeMap);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class DefaultApi : IDefaultApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="DefaultApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public DefaultApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="DefaultApi"/> class.
        /// </summary>
        /// <returns></returns>
        public DefaultApi(String basePath)
        {
            this.ApiClient = new ApiClient(basePath);
        }
    
        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public void SetBasePath(String basePath)
        {
            this.ApiClient.BasePath = basePath;
        }
    
        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public String GetBasePath(String basePath)
        {
            return this.ApiClient.BasePath;
        }
    
        /// <summary>
        /// Gets or sets the API client.
        /// </summary>
        /// <value>An instance of the ApiClient</value>
        public ApiClient ApiClient {get; set;}
    
        /// <summary>
        ///  
        /// </summary>
        /// <param name="focusLat"></param> 
        /// <param name="focusLng"></param> 
        /// <param name="withinCountry"></param> 
        /// <returns>ResponseGeocoding</returns>            
        public ResponseGeocoding GeocodingReverseSearch (double? focusLat, double? focusLng, string withinCountry)
        {
            
            // verify the required parameter 'focusLat' is set
            if (focusLat == null) throw new ApiException(400, "Missing required parameter 'focusLat' when calling GeocodingReverseSearch");
            
            // verify the required parameter 'focusLng' is set
            if (focusLng == null) throw new ApiException(400, "Missing required parameter 'focusLng' when calling GeocodingReverseSearch");
            
    
            var path = "/v4/geocoding/reverse";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (focusLat != null) queryParams.Add("focus.lat", ApiClient.ParameterToString(focusLat)); // query parameter
 if (focusLng != null) queryParams.Add("focus.lng", ApiClient.ParameterToString(focusLng)); // query parameter
 if (withinCountry != null) queryParams.Add("within.country", ApiClient.ParameterToString(withinCountry)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "ApiKey", "ApplicationId" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GeocodingReverseSearch: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GeocodingReverseSearch: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ResponseGeocoding) ApiClient.Deserialize(response.Content, typeof(ResponseGeocoding), response.Headers);
        }
    
        /// <summary>
        ///  
        /// </summary>
        /// <param name="query"></param> 
        /// <param name="withinCountry"></param> 
        /// <param name="focusLat"></param> 
        /// <param name="focusLng"></param> 
        /// <returns>ResponseGeocoding</returns>            
        public ResponseGeocoding GeocodingSearch (string query, string withinCountry, double? focusLat, double? focusLng)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling GeocodingSearch");
            
    
            var path = "/v4/geocoding/search";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (withinCountry != null) queryParams.Add("within.country", ApiClient.ParameterToString(withinCountry)); // query parameter
 if (focusLat != null) queryParams.Add("focus.lat", ApiClient.ParameterToString(focusLat)); // query parameter
 if (focusLng != null) queryParams.Add("focus.lng", ApiClient.ParameterToString(focusLng)); // query parameter
                                        
            // authentication setting, if any
            String[] authSettings = new String[] { "ApiKey", "ApplicationId" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GeocodingSearch: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GeocodingSearch: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ResponseGeocoding) ApiClient.Deserialize(response.Content, typeof(ResponseGeocoding), response.Headers);
        }
    
        /// <summary>
        ///  
        /// </summary>
        /// <returns>ResponseMapInfo</returns>            
        public ResponseMapInfo MapInfo ()
        {
            
    
            var path = "/v4/map-info";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "ApiKey", "ApplicationId" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling MapInfo: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling MapInfo: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ResponseMapInfo) ApiClient.Deserialize(response.Content, typeof(ResponseMapInfo), response.Headers);
        }
    
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestRoutes"></param> 
        /// <returns>ResponseRoutes</returns>            
        public ResponseRoutes Routes (RequestRoutes requestRoutes)
        {
            
            // verify the required parameter 'requestRoutes' is set
            if (requestRoutes == null) throw new ApiException(400, "Missing required parameter 'requestRoutes' when calling Routes");
            
    
            var path = "/v4/routes";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                postBody = ApiClient.Serialize(requestRoutes); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "ApiKey", "ApplicationId" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling Routes: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling Routes: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ResponseRoutes) ApiClient.Deserialize(response.Content, typeof(ResponseRoutes), response.Headers);
        }
    
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestSupportedLocations"></param> 
        /// <returns>ResponseSupportedLocations</returns>            
        public ResponseSupportedLocations SupportedLocations (RequestSupportedLocations requestSupportedLocations)
        {
            
            // verify the required parameter 'requestSupportedLocations' is set
            if (requestSupportedLocations == null) throw new ApiException(400, "Missing required parameter 'requestSupportedLocations' when calling SupportedLocations");
            
    
            var path = "/v4/supported-locations";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                postBody = ApiClient.Serialize(requestSupportedLocations); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "ApiKey", "ApplicationId" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SupportedLocations: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SupportedLocations: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ResponseSupportedLocations) ApiClient.Deserialize(response.Content, typeof(ResponseSupportedLocations), response.Headers);
        }
    
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestTimeFilter"></param> 
        /// <returns>ResponseTimeFilter</returns>            
        public ResponseTimeFilter TimeFilter (RequestTimeFilter requestTimeFilter)
        {
            
            // verify the required parameter 'requestTimeFilter' is set
            if (requestTimeFilter == null) throw new ApiException(400, "Missing required parameter 'requestTimeFilter' when calling TimeFilter");
            
    
            var path = "/v4/time-filter";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                postBody = ApiClient.Serialize(requestTimeFilter); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "ApiKey", "ApplicationId" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling TimeFilter: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling TimeFilter: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ResponseTimeFilter) ApiClient.Deserialize(response.Content, typeof(ResponseTimeFilter), response.Headers);
        }
    
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestTimeFilterFast"></param> 
        /// <returns>ResponseTimeFilterFast</returns>            
        public ResponseTimeFilterFast TimeFilterFast (RequestTimeFilterFast requestTimeFilterFast)
        {
            
            // verify the required parameter 'requestTimeFilterFast' is set
            if (requestTimeFilterFast == null) throw new ApiException(400, "Missing required parameter 'requestTimeFilterFast' when calling TimeFilterFast");
            
    
            var path = "/v4/time-filter/fast";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                postBody = ApiClient.Serialize(requestTimeFilterFast); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "ApiKey", "ApplicationId" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling TimeFilterFast: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling TimeFilterFast: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ResponseTimeFilterFast) ApiClient.Deserialize(response.Content, typeof(ResponseTimeFilterFast), response.Headers);
        }
    
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestTimeFilterPostcodeDistricts"></param> 
        /// <returns>ResponseTimeFilterPostcodeDistricts</returns>            
        public ResponseTimeFilterPostcodeDistricts TimeFilterPostcodeDistricts (RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts)
        {
            
            // verify the required parameter 'requestTimeFilterPostcodeDistricts' is set
            if (requestTimeFilterPostcodeDistricts == null) throw new ApiException(400, "Missing required parameter 'requestTimeFilterPostcodeDistricts' when calling TimeFilterPostcodeDistricts");
            
    
            var path = "/v4/time-filter/postcode-districts";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                postBody = ApiClient.Serialize(requestTimeFilterPostcodeDistricts); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "ApiKey", "ApplicationId" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling TimeFilterPostcodeDistricts: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling TimeFilterPostcodeDistricts: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ResponseTimeFilterPostcodeDistricts) ApiClient.Deserialize(response.Content, typeof(ResponseTimeFilterPostcodeDistricts), response.Headers);
        }
    
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestTimeFilterPostcodeSectors"></param> 
        /// <returns>ResponseTimeFilterPostcodeSectors</returns>            
        public ResponseTimeFilterPostcodeSectors TimeFilterPostcodeSectors (RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors)
        {
            
            // verify the required parameter 'requestTimeFilterPostcodeSectors' is set
            if (requestTimeFilterPostcodeSectors == null) throw new ApiException(400, "Missing required parameter 'requestTimeFilterPostcodeSectors' when calling TimeFilterPostcodeSectors");
            
    
            var path = "/v4/time-filter/postcode-sectors";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                postBody = ApiClient.Serialize(requestTimeFilterPostcodeSectors); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "ApiKey", "ApplicationId" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling TimeFilterPostcodeSectors: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling TimeFilterPostcodeSectors: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ResponseTimeFilterPostcodeSectors) ApiClient.Deserialize(response.Content, typeof(ResponseTimeFilterPostcodeSectors), response.Headers);
        }
    
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestTimeFilterPostcodes"></param> 
        /// <returns>ResponseTimeFilterPostcodes</returns>            
        public ResponseTimeFilterPostcodes TimeFilterPostcodes (RequestTimeFilterPostcodes requestTimeFilterPostcodes)
        {
            
            // verify the required parameter 'requestTimeFilterPostcodes' is set
            if (requestTimeFilterPostcodes == null) throw new ApiException(400, "Missing required parameter 'requestTimeFilterPostcodes' when calling TimeFilterPostcodes");
            
    
            var path = "/v4/time-filter/postcodes";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                postBody = ApiClient.Serialize(requestTimeFilterPostcodes); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "ApiKey", "ApplicationId" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling TimeFilterPostcodes: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling TimeFilterPostcodes: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ResponseTimeFilterPostcodes) ApiClient.Deserialize(response.Content, typeof(ResponseTimeFilterPostcodes), response.Headers);
        }
    
        /// <summary>
        ///  
        /// </summary>
        /// <param name="requestTimeMap"></param> 
        /// <returns>ResponseTimeMap</returns>            
        public ResponseTimeMap TimeMap (RequestTimeMap requestTimeMap)
        {
            
            // verify the required parameter 'requestTimeMap' is set
            if (requestTimeMap == null) throw new ApiException(400, "Missing required parameter 'requestTimeMap' when calling TimeMap");
            
    
            var path = "/v4/time-map";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                                postBody = ApiClient.Serialize(requestTimeMap); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] { "ApiKey", "ApplicationId" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling TimeMap: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling TimeMap: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ResponseTimeMap) ApiClient.Deserialize(response.Content, typeof(ResponseTimeMap), response.Headers);
        }
    
    }
}
