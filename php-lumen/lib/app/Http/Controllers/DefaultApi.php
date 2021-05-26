<?php

/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 * PHP version 7.2.5
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


namespace App\Http\Controllers;

use Illuminate\Support\Facades\Request;

class DefaultApi extends Controller
{
    /**
     * Constructor
     */
    public function __construct()
    {
    }

    /**
     * Operation geocodingReverseSearch
     *
     * .
     *
     *
     * @return Http response
     */
    public function geocodingReverseSearch()
    {
        $input = Request::all();

        //path params validation


        //not path params validation
        if (!isset($input['lat'])) {
            throw new \InvalidArgumentException('Missing the required parameter $lat when calling geocodingReverseSearch');
        }
        $lat = $input['lat'];

        if (!isset($input['lng'])) {
            throw new \InvalidArgumentException('Missing the required parameter $lng when calling geocodingReverseSearch');
        }
        $lng = $input['lng'];

        $within_country = $input['within_country'];


        return response('How about implementing geocodingReverseSearch as a get method ?');
    }
    /**
     * Operation geocodingSearch
     *
     * .
     *
     *
     * @return Http response
     */
    public function geocodingSearch()
    {
        $input = Request::all();

        //path params validation


        //not path params validation
        if (!isset($input['query'])) {
            throw new \InvalidArgumentException('Missing the required parameter $query when calling geocodingSearch');
        }
        $query = $input['query'];

        $focus_lat = $input['focus_lat'];

        $focus_lng = $input['focus_lng'];

        $within_country = $input['within_country'];


        return response('How about implementing geocodingSearch as a get method ?');
    }
    /**
     * Operation mapInfo
     *
     * .
     *
     *
     * @return Http response
     */
    public function mapInfo()
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing mapInfo as a get method ?');
    }
    /**
     * Operation routes
     *
     * .
     *
     *
     * @return Http response
     */
    public function routes()
    {
        $input = Request::all();

        //path params validation


        //not path params validation
        if (!isset($input['request_routes'])) {
            throw new \InvalidArgumentException('Missing the required parameter $request_routes when calling routes');
        }
        $request_routes = $input['request_routes'];


        return response('How about implementing routes as a post method ?');
    }
    /**
     * Operation supportedLocations
     *
     * .
     *
     *
     * @return Http response
     */
    public function supportedLocations()
    {
        $input = Request::all();

        //path params validation


        //not path params validation
        if (!isset($input['request_supported_locations'])) {
            throw new \InvalidArgumentException('Missing the required parameter $request_supported_locations when calling supportedLocations');
        }
        $request_supported_locations = $input['request_supported_locations'];


        return response('How about implementing supportedLocations as a post method ?');
    }
    /**
     * Operation timeFilter
     *
     * .
     *
     *
     * @return Http response
     */
    public function timeFilter()
    {
        $input = Request::all();

        //path params validation


        //not path params validation
        if (!isset($input['request_time_filter'])) {
            throw new \InvalidArgumentException('Missing the required parameter $request_time_filter when calling timeFilter');
        }
        $request_time_filter = $input['request_time_filter'];


        return response('How about implementing timeFilter as a post method ?');
    }
    /**
     * Operation timeFilterFast
     *
     * .
     *
     *
     * @return Http response
     */
    public function timeFilterFast()
    {
        $input = Request::all();

        //path params validation


        //not path params validation
        if (!isset($input['request_time_filter_fast'])) {
            throw new \InvalidArgumentException('Missing the required parameter $request_time_filter_fast when calling timeFilterFast');
        }
        $request_time_filter_fast = $input['request_time_filter_fast'];


        return response('How about implementing timeFilterFast as a post method ?');
    }
    /**
     * Operation timeFilterPostcodeDistricts
     *
     * .
     *
     *
     * @return Http response
     */
    public function timeFilterPostcodeDistricts()
    {
        $input = Request::all();

        //path params validation


        //not path params validation
        if (!isset($input['request_time_filter_postcode_districts'])) {
            throw new \InvalidArgumentException('Missing the required parameter $request_time_filter_postcode_districts when calling timeFilterPostcodeDistricts');
        }
        $request_time_filter_postcode_districts = $input['request_time_filter_postcode_districts'];


        return response('How about implementing timeFilterPostcodeDistricts as a post method ?');
    }
    /**
     * Operation timeFilterPostcodeSectors
     *
     * .
     *
     *
     * @return Http response
     */
    public function timeFilterPostcodeSectors()
    {
        $input = Request::all();

        //path params validation


        //not path params validation
        if (!isset($input['request_time_filter_postcode_sectors'])) {
            throw new \InvalidArgumentException('Missing the required parameter $request_time_filter_postcode_sectors when calling timeFilterPostcodeSectors');
        }
        $request_time_filter_postcode_sectors = $input['request_time_filter_postcode_sectors'];


        return response('How about implementing timeFilterPostcodeSectors as a post method ?');
    }
    /**
     * Operation timeFilterPostcodes
     *
     * .
     *
     *
     * @return Http response
     */
    public function timeFilterPostcodes()
    {
        $input = Request::all();

        //path params validation


        //not path params validation
        if (!isset($input['request_time_filter_postcodes'])) {
            throw new \InvalidArgumentException('Missing the required parameter $request_time_filter_postcodes when calling timeFilterPostcodes');
        }
        $request_time_filter_postcodes = $input['request_time_filter_postcodes'];


        return response('How about implementing timeFilterPostcodes as a post method ?');
    }
    /**
     * Operation timeMap
     *
     * .
     *
     *
     * @return Http response
     */
    public function timeMap()
    {
        $input = Request::all();

        //path params validation


        //not path params validation
        if (!isset($input['request_time_map'])) {
            throw new \InvalidArgumentException('Missing the required parameter $request_time_map when calling timeMap');
        }
        $request_time_map = $input['request_time_map'];


        return response('How about implementing timeMap as a post method ?');
    }
}
