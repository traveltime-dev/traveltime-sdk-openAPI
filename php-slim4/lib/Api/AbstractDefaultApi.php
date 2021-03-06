<?php

/**
 * TravelTime API
 * PHP version 7.2
 *
 * @package OpenAPIServer
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 */

/**
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 * Do not edit the class manually.
 */
namespace OpenAPIServer\Api;

use Psr\Container\ContainerInterface;
use Psr\Http\Message\ServerRequestInterface;
use Psr\Http\Message\ResponseInterface;
use Slim\Exception\HttpNotImplementedException;

/**
 * AbstractDefaultApi Class Doc Comment
 *
 * @package OpenAPIServer\Api
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 */
abstract class AbstractDefaultApi
{

    /**
     * @var ContainerInterface|null Slim app container instance
     */
    protected $container;

    /**
     * Route Controller constructor receives container
     *
     * @param ContainerInterface|null $container Slim app container instance
     */
    public function __construct(ContainerInterface $container = null)
    {
        $this->container = $container;
    }


    /**
     * GET geocodingReverseSearch
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param array|null             $args     Path arguments
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function geocodingReverseSearch(ServerRequestInterface $request, ResponseInterface $response, array $args)
    {
        $queryParams = $request->getQueryParams();
        $lat = (key_exists('lat', $queryParams)) ? $queryParams['lat'] : null;
        $lng = (key_exists('lng', $queryParams)) ? $queryParams['lng'] : null;
        $withinCountry = (key_exists('within.country', $queryParams)) ? $queryParams['within.country'] : null;
        $message = "How about implementing geocodingReverseSearch as a GET method in OpenAPIServer\Api\DefaultApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET geocodingSearch
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param array|null             $args     Path arguments
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function geocodingSearch(ServerRequestInterface $request, ResponseInterface $response, array $args)
    {
        $queryParams = $request->getQueryParams();
        $query = (key_exists('query', $queryParams)) ? $queryParams['query'] : null;
        $focusLat = (key_exists('focus.lat', $queryParams)) ? $queryParams['focus.lat'] : null;
        $focusLng = (key_exists('focus.lng', $queryParams)) ? $queryParams['focus.lng'] : null;
        $withinCountry = (key_exists('within.country', $queryParams)) ? $queryParams['within.country'] : null;
        $message = "How about implementing geocodingSearch as a GET method in OpenAPIServer\Api\DefaultApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET mapInfo
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param array|null             $args     Path arguments
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function mapInfo(ServerRequestInterface $request, ResponseInterface $response, array $args)
    {
        $message = "How about implementing mapInfo as a GET method in OpenAPIServer\Api\DefaultApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * POST routes
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param array|null             $args     Path arguments
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function routes(ServerRequestInterface $request, ResponseInterface $response, array $args)
    {
        $body = $request->getParsedBody();
        $message = "How about implementing routes as a POST method in OpenAPIServer\Api\DefaultApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * POST supportedLocations
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param array|null             $args     Path arguments
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function supportedLocations(ServerRequestInterface $request, ResponseInterface $response, array $args)
    {
        $body = $request->getParsedBody();
        $message = "How about implementing supportedLocations as a POST method in OpenAPIServer\Api\DefaultApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * POST timeFilter
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param array|null             $args     Path arguments
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function timeFilter(ServerRequestInterface $request, ResponseInterface $response, array $args)
    {
        $body = $request->getParsedBody();
        $message = "How about implementing timeFilter as a POST method in OpenAPIServer\Api\DefaultApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * POST timeFilterFast
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param array|null             $args     Path arguments
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function timeFilterFast(ServerRequestInterface $request, ResponseInterface $response, array $args)
    {
        $body = $request->getParsedBody();
        $message = "How about implementing timeFilterFast as a POST method in OpenAPIServer\Api\DefaultApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * POST timeFilterPostcodeDistricts
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param array|null             $args     Path arguments
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function timeFilterPostcodeDistricts(ServerRequestInterface $request, ResponseInterface $response, array $args)
    {
        $body = $request->getParsedBody();
        $message = "How about implementing timeFilterPostcodeDistricts as a POST method in OpenAPIServer\Api\DefaultApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * POST timeFilterPostcodeSectors
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param array|null             $args     Path arguments
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function timeFilterPostcodeSectors(ServerRequestInterface $request, ResponseInterface $response, array $args)
    {
        $body = $request->getParsedBody();
        $message = "How about implementing timeFilterPostcodeSectors as a POST method in OpenAPIServer\Api\DefaultApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * POST timeFilterPostcodes
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param array|null             $args     Path arguments
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function timeFilterPostcodes(ServerRequestInterface $request, ResponseInterface $response, array $args)
    {
        $body = $request->getParsedBody();
        $message = "How about implementing timeFilterPostcodes as a POST method in OpenAPIServer\Api\DefaultApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * POST timeMap
     * Output-Formats: [application/json, application/vnd.wkt+json, application/vnd.wkt-no-holes+json, application/vnd.bounding-boxes+json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param array|null             $args     Path arguments
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function timeMap(ServerRequestInterface $request, ResponseInterface $response, array $args)
    {
        $body = $request->getParsedBody();
        $message = "How about implementing timeMap as a POST method in OpenAPIServer\Api\DefaultApi class?";
        throw new HttpNotImplementedException($request, $message);
    }
}
