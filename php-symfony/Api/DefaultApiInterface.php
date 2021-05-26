<?php
/**
 * DefaultApiInterface
 * PHP version 7.1.3
 *
 * @category Class
 * @package  OpenAPI\Server
 * @author   OpenAPI Generator team
 * @link     https://github.com/openapitools/openapi-generator
 */

/**
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 *
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 * Do not edit the class manually.
 */

namespace OpenAPI\Server\Api;

use Symfony\Component\HttpFoundation\File\UploadedFile;
use OpenAPI\Server\Model\RequestRoutes;
use OpenAPI\Server\Model\RequestSupportedLocations;
use OpenAPI\Server\Model\RequestTimeFilter;
use OpenAPI\Server\Model\RequestTimeFilterFast;
use OpenAPI\Server\Model\RequestTimeFilterPostcodeDistricts;
use OpenAPI\Server\Model\RequestTimeFilterPostcodeSectors;
use OpenAPI\Server\Model\RequestTimeFilterPostcodes;
use OpenAPI\Server\Model\RequestTimeMap;
use OpenAPI\Server\Model\ResponseError;
use OpenAPI\Server\Model\ResponseGeocoding;
use OpenAPI\Server\Model\ResponseMapInfo;
use OpenAPI\Server\Model\ResponseRoutes;
use OpenAPI\Server\Model\ResponseSupportedLocations;
use OpenAPI\Server\Model\ResponseTimeFilter;
use OpenAPI\Server\Model\ResponseTimeFilterFast;
use OpenAPI\Server\Model\ResponseTimeFilterPostcodeDistricts;
use OpenAPI\Server\Model\ResponseTimeFilterPostcodeSectors;
use OpenAPI\Server\Model\ResponseTimeFilterPostcodes;
use OpenAPI\Server\Model\ResponseTimeMap;

/**
 * DefaultApiInterface Interface Doc Comment
 *
 * @category Interface
 * @package  OpenAPI\Server\Api
 * @author   OpenAPI Generator team
 * @link     https://github.com/openapitools/openapi-generator
 */
interface DefaultApiInterface
{

    /**
     * Sets authentication method ApiKey
     *
     * @param string $value Value of the ApiKey authentication method.
     *
     * @return void
     */
    public function setApiKey($value);

    /**
     * Sets authentication method ApplicationId
     *
     * @param string $value Value of the ApplicationId authentication method.
     *
     * @return void
     */
    public function setApplicationId($value);

    /**
     * Operation geocodingReverseSearch
     *
     * @param  double $lat   (required)
     * @param  double $lng   (required)
     * @param  string $withinCountry   (optional)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return OpenAPI\Server\Model\ResponseGeocoding
     *
     */
    public function geocodingReverseSearch($lat, $lng, $withinCountry = null, &$responseCode, array &$responseHeaders);

    /**
     * Operation geocodingSearch
     *
     * @param  string $query   (required)
     * @param  double $focusLat   (optional)
     * @param  double $focusLng   (optional)
     * @param  string $withinCountry   (optional)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return OpenAPI\Server\Model\ResponseGeocoding
     *
     */
    public function geocodingSearch($query, $focusLat = null, $focusLng = null, $withinCountry = null, &$responseCode, array &$responseHeaders);

    /**
     * Operation mapInfo
     *
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return OpenAPI\Server\Model\ResponseMapInfo
     *
     */
    public function mapInfo(&$responseCode, array &$responseHeaders);

    /**
     * Operation routes
     *
     * @param  OpenAPI\Server\Model\RequestRoutes $requestRoutes   (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return OpenAPI\Server\Model\ResponseRoutes
     *
     */
    public function routes(RequestRoutes $requestRoutes, &$responseCode, array &$responseHeaders);

    /**
     * Operation supportedLocations
     *
     * @param  OpenAPI\Server\Model\RequestSupportedLocations $requestSupportedLocations   (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return OpenAPI\Server\Model\ResponseSupportedLocations
     *
     */
    public function supportedLocations(RequestSupportedLocations $requestSupportedLocations, &$responseCode, array &$responseHeaders);

    /**
     * Operation timeFilter
     *
     * @param  OpenAPI\Server\Model\RequestTimeFilter $requestTimeFilter   (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return OpenAPI\Server\Model\ResponseTimeFilter
     *
     */
    public function timeFilter(RequestTimeFilter $requestTimeFilter, &$responseCode, array &$responseHeaders);

    /**
     * Operation timeFilterFast
     *
     * @param  OpenAPI\Server\Model\RequestTimeFilterFast $requestTimeFilterFast   (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return OpenAPI\Server\Model\ResponseTimeFilterFast
     *
     */
    public function timeFilterFast(RequestTimeFilterFast $requestTimeFilterFast, &$responseCode, array &$responseHeaders);

    /**
     * Operation timeFilterPostcodeDistricts
     *
     * @param  OpenAPI\Server\Model\RequestTimeFilterPostcodeDistricts $requestTimeFilterPostcodeDistricts   (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return OpenAPI\Server\Model\ResponseTimeFilterPostcodeDistricts
     *
     */
    public function timeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts $requestTimeFilterPostcodeDistricts, &$responseCode, array &$responseHeaders);

    /**
     * Operation timeFilterPostcodeSectors
     *
     * @param  OpenAPI\Server\Model\RequestTimeFilterPostcodeSectors $requestTimeFilterPostcodeSectors   (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return OpenAPI\Server\Model\ResponseTimeFilterPostcodeSectors
     *
     */
    public function timeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors $requestTimeFilterPostcodeSectors, &$responseCode, array &$responseHeaders);

    /**
     * Operation timeFilterPostcodes
     *
     * @param  OpenAPI\Server\Model\RequestTimeFilterPostcodes $requestTimeFilterPostcodes   (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return OpenAPI\Server\Model\ResponseTimeFilterPostcodes
     *
     */
    public function timeFilterPostcodes(RequestTimeFilterPostcodes $requestTimeFilterPostcodes, &$responseCode, array &$responseHeaders);

    /**
     * Operation timeMap
     *
     * @param  OpenAPI\Server\Model\RequestTimeMap $requestTimeMap   (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return OpenAPI\Server\Model\ResponseTimeMap
     *
     */
    public function timeMap(RequestTimeMap $requestTimeMap, &$responseCode, array &$responseHeaders);
}
