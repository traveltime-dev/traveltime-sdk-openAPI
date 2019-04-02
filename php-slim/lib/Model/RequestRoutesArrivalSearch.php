<?php
/**
 * RequestRoutesArrivalSearch
 */
namespace OpenAPIServer\Model;

/**
 * RequestRoutesArrivalSearch
 */
class RequestRoutesArrivalSearch
{
    
    /** @var string $id */
    private $id;
    
    /** @var string[] $departureLocationIds */
    private $departureLocationIds;
    
    /** @var string $arrivalLocationId */
    private $arrivalLocationId;
    
    /** @var \OpenAPIServer\Model\RequestTransportation $transportation */
    private $transportation;
    
    /** @var \DateTime $arrivalTime */
    private $arrivalTime;
    
    /** @var \OpenAPIServer\Model\RequestRoutesProperty[] $properties */
    private $properties;
    
    /** @var \OpenAPIServer\Model\RequestRangeFull $range */
    private $range;
}
