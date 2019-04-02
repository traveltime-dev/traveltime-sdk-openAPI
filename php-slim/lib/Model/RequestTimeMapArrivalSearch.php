<?php
/**
 * RequestTimeMapArrivalSearch
 */
namespace OpenAPIServer\Model;

/**
 * RequestTimeMapArrivalSearch
 */
class RequestTimeMapArrivalSearch
{
    
    /** @var string $id */
    private $id;
    
    /** @var \OpenAPIServer\Model\Coords $coords */
    private $coords;
    
    /** @var \OpenAPIServer\Model\RequestTransportation $transportation */
    private $transportation;
    
    /** @var int $travelTime */
    private $travelTime;
    
    /** @var \DateTime $arrivalTime */
    private $arrivalTime;
    
    /** @var \OpenAPIServer\Model\RequestTimeMapProperty[] $properties */
    private $properties;
    
    /** @var \OpenAPIServer\Model\RequestRangeNoMaxResults $range */
    private $range;
}
