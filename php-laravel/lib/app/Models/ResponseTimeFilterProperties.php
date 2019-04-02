<?php
/**
 * ResponseTimeFilterProperties
 */
namespace app\Models;

/**
 * ResponseTimeFilterProperties
 */
class ResponseTimeFilterProperties {

    /** @var int $travelTime */
    private $travelTime;

    /** @var int $distance */
    private $distance;

    /** @var \app\Models\ResponseDistanceBreakdownItem[] $distanceBreakdown */
    private $distanceBreakdown;

    /** @var \app\Models\ResponseFares $fares */
    private $fares;

    /** @var \app\Models\ResponseRoute $route */
    private $route;

}
