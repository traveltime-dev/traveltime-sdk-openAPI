<?php
/**
 * RequestTimeFilterDepartureSearch
 */
namespace OpenAPIServer\Model;

/**
 * RequestTimeFilterDepartureSearch
 */
class RequestTimeFilterDepartureSearch
{
    
    /** @var string $id */
    private $id;
    
    /** @var string $departureLocationId */
    private $departureLocationId;
    
    /** @var string[] $arrivalLocationIds */
    private $arrivalLocationIds;
    
    /** @var \OpenAPIServer\Model\RequestTransportation $transportation */
    private $transportation;
    
    /** @var int $travelTime */
    private $travelTime;
    
    /** @var \DateTime $departureTime */
    private $departureTime;
    
    /** @var \OpenAPIServer\Model\RequestTimeFilterProperty[] $properties */
    private $properties;
    
    /** @var \OpenAPIServer\Model\RequestRangeFull $range */
    private $range;
}
