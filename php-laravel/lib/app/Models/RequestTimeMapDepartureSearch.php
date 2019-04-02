<?php
/**
 * RequestTimeMapDepartureSearch
 */
namespace app\Models;

/**
 * RequestTimeMapDepartureSearch
 */
class RequestTimeMapDepartureSearch {

    /** @var string $id */
    private $id;

    /** @var \app\Models\Coords $coords */
    private $coords;

    /** @var \app\Models\RequestTransportation $transportation */
    private $transportation;

    /** @var int $travelTime */
    private $travelTime;

    /** @var \DateTime $departureTime */
    private $departureTime;

    /** @var \app\Models\RequestTimeMapProperty[] $properties */
    private $properties;

    /** @var \app\Models\RequestRangeNoMaxResults $range */
    private $range;

}
