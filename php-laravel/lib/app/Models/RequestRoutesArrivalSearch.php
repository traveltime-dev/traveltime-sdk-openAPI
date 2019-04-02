<?php
/**
 * RequestRoutesArrivalSearch
 */
namespace app\Models;

/**
 * RequestRoutesArrivalSearch
 */
class RequestRoutesArrivalSearch {

    /** @var string $id */
    private $id;

    /** @var string[] $departureLocationIds */
    private $departureLocationIds;

    /** @var string $arrivalLocationId */
    private $arrivalLocationId;

    /** @var \app\Models\RequestTransportation $transportation */
    private $transportation;

    /** @var \DateTime $arrivalTime */
    private $arrivalTime;

    /** @var \app\Models\RequestRoutesProperty[] $properties */
    private $properties;

    /** @var \app\Models\RequestRangeFull $range */
    private $range;

}
