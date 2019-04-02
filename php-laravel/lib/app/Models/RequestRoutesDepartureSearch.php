<?php
/**
 * RequestRoutesDepartureSearch
 */
namespace app\Models;

/**
 * RequestRoutesDepartureSearch
 */
class RequestRoutesDepartureSearch {

    /** @var string $id */
    private $id;

    /** @var string $departureLocationId */
    private $departureLocationId;

    /** @var string[] $arrivalLocationIds */
    private $arrivalLocationIds;

    /** @var \app\Models\RequestTransportation $transportation */
    private $transportation;

    /** @var \DateTime $departureTime */
    private $departureTime;

    /** @var \app\Models\RequestRoutesProperty[] $properties */
    private $properties;

    /** @var \app\Models\RequestRangeFull $range */
    private $range;

}
