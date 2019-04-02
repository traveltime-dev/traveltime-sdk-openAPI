<?php
/**
 * RequestTimeFilterPostcodeDistrictsDepartureSearch
 */
namespace app\Models;

/**
 * RequestTimeFilterPostcodeDistrictsDepartureSearch
 */
class RequestTimeFilterPostcodeDistrictsDepartureSearch {

    /** @var string $id */
    private $id;

    /** @var \app\Models\RequestTransportation $transportation */
    private $transportation;

    /** @var int $travelTime */
    private $travelTime;

    /** @var \DateTime $departureTime */
    private $departureTime;

    /** @var double $reachablePostcodesThreshold */
    private $reachablePostcodesThreshold;

    /** @var \app\Models\RequestTimeFilterPostcodeDistrictsProperty[] $properties */
    private $properties;

    /** @var \app\Models\RequestRangeFull $range */
    private $range;

}
