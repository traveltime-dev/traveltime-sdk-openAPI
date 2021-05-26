<?php
/**
 * RequestTimeMapArrivalSearch
 */
namespace app\Models;

/**
 * RequestTimeMapArrivalSearch
 */
class RequestTimeMapArrivalSearch {

    /** @var string $id */
    private $id;

    /** @var \app\Models\Coords $coords */
    private $coords;

    /** @var \app\Models\RequestTransportation $transportation */
    private $transportation;

    /** @var int $travelTime */
    private $travelTime;

    /** @var \DateTime $arrivalTime */
    private $arrivalTime;

    /** @var \app\Models\RequestTimeMapProperty[] $properties */
    private $properties;

    /** @var \app\Models\RequestRangeNoMaxResults $range */
    private $range;

    /** @var \app\Models\RequestLevelOfDetail $levelOfDetail */
    private $levelOfDetail;

}
