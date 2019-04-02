<?php
/**
 * RequestTimeMap
 */
namespace OpenAPIServer\Model;

/**
 * RequestTimeMap
 */
class RequestTimeMap
{
    
    /** @var \OpenAPIServer\Model\RequestTimeMapDepartureSearch[] $departureSearches */
    private $departureSearches;
    
    /** @var \OpenAPIServer\Model\RequestTimeMapArrivalSearch[] $arrivalSearches */
    private $arrivalSearches;
    
    /** @var \OpenAPIServer\Model\RequestUnionOnIntersection[] $unions */
    private $unions;
    
    /** @var \OpenAPIServer\Model\RequestUnionOnIntersection[] $intersections */
    private $intersections;
}
