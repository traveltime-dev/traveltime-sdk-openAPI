<?php
/**
 * ResponseTimeFilterProperties
 */
namespace OpenAPIServer\Model;

/**
 * ResponseTimeFilterProperties
 */
class ResponseTimeFilterProperties
{
    
    /** @var int $travelTime */
    private $travelTime;
    
    /** @var int $distance */
    private $distance;
    
    /** @var \OpenAPIServer\Model\ResponseDistanceBreakdownItem[] $distanceBreakdown */
    private $distanceBreakdown;
    
    /** @var \OpenAPIServer\Model\ResponseFares $fares */
    private $fares;
    
    /** @var \OpenAPIServer\Model\ResponseRoute $route */
    private $route;
}
