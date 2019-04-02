<?php
/**
 * RequestTimeFilterFastArrivalOneToManySearch
 */
namespace app\Models;

/**
 * RequestTimeFilterFastArrivalOneToManySearch
 */
class RequestTimeFilterFastArrivalOneToManySearch {

    /** @var string $id */
    private $id;

    /** @var string $departureLocationId */
    private $departureLocationId;

    /** @var string[] $arrivalLocationIds */
    private $arrivalLocationIds;

    /** @var \app\Models\RequestTransportationFast $transportation */
    private $transportation;

    /** @var int $travelTime */
    private $travelTime;

    /** @var \app\Models\RequestArrivalTimePeriod $arrivalTimePeriod */
    private $arrivalTimePeriod;

    /** @var \app\Models\RequestTimeFilterFastProperty[] $properties */
    private $properties;

}
