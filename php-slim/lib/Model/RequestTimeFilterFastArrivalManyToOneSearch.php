<?php
/**
 * RequestTimeFilterFastArrivalManyToOneSearch
 */
namespace OpenAPIServer\Model;

/**
 * RequestTimeFilterFastArrivalManyToOneSearch
 */
class RequestTimeFilterFastArrivalManyToOneSearch
{
    
    /** @var string $id */
    private $id;
    
    /** @var string $arrivalLocationId */
    private $arrivalLocationId;
    
    /** @var string[] $departureLocationIds */
    private $departureLocationIds;
    
    /** @var \OpenAPIServer\Model\RequestTransportationFast $transportation */
    private $transportation;
    
    /** @var int $travelTime */
    private $travelTime;
    
    /** @var \OpenAPIServer\Model\RequestArrivalTimePeriod $arrivalTimePeriod */
    private $arrivalTimePeriod;
    
    /** @var \OpenAPIServer\Model\RequestTimeFilterFastProperty[] $properties */
    private $properties;
}
