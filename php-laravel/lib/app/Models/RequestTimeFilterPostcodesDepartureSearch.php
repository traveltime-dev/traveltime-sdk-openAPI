<?php
/**
 * RequestTimeFilterPostcodesDepartureSearch
 */
namespace app\Models;

/**
 * RequestTimeFilterPostcodesDepartureSearch
 */
class RequestTimeFilterPostcodesDepartureSearch {

    /** @var string $id */
    private $id;

    /** @var \app\Models\RequestTransportation $transportation */
    private $transportation;

    /** @var int $travelTime */
    private $travelTime;

    /** @var \DateTime $departureTime */
    private $departureTime;

    /** @var \app\Models\RequestTimeFilterPostcodesProperty[] $properties */
    private $properties;

    /** @var \app\Models\RequestRangeFull $range */
    private $range;

}
