<?php
/**
 * RequestTimeFilterPostcodesArrivalSearch
 */
namespace app\Models;

/**
 * RequestTimeFilterPostcodesArrivalSearch
 */
class RequestTimeFilterPostcodesArrivalSearch {

    /** @var string $id */
    private $id;

    /** @var \app\Models\RequestTransportation $transportation */
    private $transportation;

    /** @var int $travelTime */
    private $travelTime;

    /** @var \DateTime $arrivalTime */
    private $arrivalTime;

    /** @var \app\Models\RequestTimeFilterPostcodesProperty[] $properties */
    private $properties;

    /** @var \app\Models\RequestRangeFull $range */
    private $range;

}
