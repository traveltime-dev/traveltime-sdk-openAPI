<?php
/**
 * RequestTimeFilterFastArrivalManyToOneSearch
 */
namespace app\Models;

/**
 * RequestTimeFilterFastArrivalManyToOneSearch
 */
class RequestTimeFilterFastArrivalManyToOneSearch {

    /** @var string $id */
    private $id;

    /** @var string $arrivalLocationId */
    private $arrivalLocationId;

    /** @var string[] $departureLocationIds */
    private $departureLocationIds;

    /** @var \app\Models\RequestTransportationFast $transportation */
    private $transportation;

    /** @var int $travelTime */
    private $travelTime;

    /** @var \app\Models\RequestArrivalTimePeriod $arrivalTimePeriod */
    private $arrivalTimePeriod;

    /** @var \app\Models\RequestTimeFilterFastProperty[] $properties */
    private $properties;

}
