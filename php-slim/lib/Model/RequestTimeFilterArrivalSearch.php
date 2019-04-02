<?php
/**
 * RequestTimeFilterArrivalSearch
 */
namespace OpenAPIServer\Model;

/**
 * RequestTimeFilterArrivalSearch
 */
class RequestTimeFilterArrivalSearch
{
    
    /** @var string $id */
    private $id;
    
    /** @var string[] $departureLocationIds */
    private $departureLocationIds;
    
    /** @var string $arrivalLocationId */
    private $arrivalLocationId;
    
    /** @var \OpenAPIServer\Model\RequestTransportation $transportation */
    private $transportation;
    
    /** @var int $travelTime */
    private $travelTime;
    
    /** @var \DateTime $arrivalTime */
    private $arrivalTime;
    
    /** @var \OpenAPIServer\Model\RequestTimeFilterProperty[] $properties */
    private $properties;
    
    /** @var \OpenAPIServer\Model\RequestRangeFull $range */
    private $range;
}
