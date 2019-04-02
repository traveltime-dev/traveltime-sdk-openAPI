<?php
/**
 * RequestTimeMap
 */
namespace app\Models;

/**
 * RequestTimeMap
 */
class RequestTimeMap {

    /** @var \app\Models\RequestTimeMapDepartureSearch[] $departureSearches */
    private $departureSearches;

    /** @var \app\Models\RequestTimeMapArrivalSearch[] $arrivalSearches */
    private $arrivalSearches;

    /** @var \app\Models\RequestUnionOnIntersection[] $unions */
    private $unions;

    /** @var \app\Models\RequestUnionOnIntersection[] $intersections */
    private $intersections;

}
