<?php
/**
 * RequestTimeFilterPostcodeDistrictsArrivalSearch
 */
namespace app\Models;

/**
 * RequestTimeFilterPostcodeDistrictsArrivalSearch
 */
class RequestTimeFilterPostcodeDistrictsArrivalSearch {

    /** @var string $id */
    private $id;

    /** @var \app\Models\RequestTransportation $transportation */
    private $transportation;

    /** @var int $travelTime */
    private $travelTime;

    /** @var \DateTime $arrivalTime */
    private $arrivalTime;

    /** @var double $reachablePostcodesThreshold */
    private $reachablePostcodesThreshold;

    /** @var \app\Models\RequestTimeFilterPostcodeDistrictsProperty[] $properties */
    private $properties;

    /** @var \app\Models\RequestRangeFull $range */
    private $range;

}
