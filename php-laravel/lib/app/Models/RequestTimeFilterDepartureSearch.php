<?php
/**
 * RequestTimeFilterDepartureSearch
 */
namespace app\Models;

/**
 * RequestTimeFilterDepartureSearch
 */
class RequestTimeFilterDepartureSearch {

    /** @var string $id */
    private $id;

    /** @var string $departureLocationId */
    private $departureLocationId;

    /** @var string[] $arrivalLocationIds */
    private $arrivalLocationIds;

    /** @var \app\Models\RequestTransportation $transportation */
    private $transportation;

    /** @var int $travelTime */
    private $travelTime;

    /** @var \DateTime $departureTime */
    private $departureTime;

    /** @var \app\Models\RequestTimeFilterProperty[] $properties */
    private $properties;

    /** @var \app\Models\RequestRangeFull $range */
    private $range;

}
