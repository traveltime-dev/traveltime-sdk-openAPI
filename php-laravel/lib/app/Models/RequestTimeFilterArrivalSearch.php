<?php
/**
 * RequestTimeFilterArrivalSearch
 */
namespace app\Models;

/**
 * RequestTimeFilterArrivalSearch
 */
class RequestTimeFilterArrivalSearch {

    /** @var string $id */
    private $id;

    /** @var string[] $departureLocationIds */
    private $departureLocationIds;

    /** @var string $arrivalLocationId */
    private $arrivalLocationId;

    /** @var \app\Models\RequestTransportation $transportation */
    private $transportation;

    /** @var int $travelTime */
    private $travelTime;

    /** @var \DateTime $arrivalTime */
    private $arrivalTime;

    /** @var \app\Models\RequestTimeFilterProperty[] $properties */
    private $properties;

    /** @var \app\Models\RequestRangeFull $range */
    private $range;

}
