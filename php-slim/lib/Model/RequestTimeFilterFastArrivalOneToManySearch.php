<?php
/**
 * RequestTimeFilterFastArrivalOneToManySearch
 */
namespace OpenAPIServer\Model;

/**
 * RequestTimeFilterFastArrivalOneToManySearch
 */
class RequestTimeFilterFastArrivalOneToManySearch
{
    
    /** @var string $id */
    private $id;
    
    /** @var string $departureLocationId */
    private $departureLocationId;
    
    /** @var string[] $arrivalLocationIds */
    private $arrivalLocationIds;
    
    /** @var \OpenAPIServer\Model\RequestTransportationFast $transportation */
    private $transportation;
    
    /** @var int $travelTime */
    private $travelTime;
    
    /** @var \OpenAPIServer\Model\RequestArrivalTimePeriod $arrivalTimePeriod */
    private $arrivalTimePeriod;
    
    /** @var \OpenAPIServer\Model\RequestTimeFilterFastProperty[] $properties */
    private $properties;
}
