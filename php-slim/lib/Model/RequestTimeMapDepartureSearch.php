<?php
/**
 * RequestTimeMapDepartureSearch
 */
namespace OpenAPIServer\Model;

/**
 * RequestTimeMapDepartureSearch
 */
class RequestTimeMapDepartureSearch
{
    
    /** @var string $id */
    private $id;
    
    /** @var \OpenAPIServer\Model\Coords $coords */
    private $coords;
    
    /** @var \OpenAPIServer\Model\RequestTransportation $transportation */
    private $transportation;
    
    /** @var int $travelTime */
    private $travelTime;
    
    /** @var \DateTime $departureTime */
    private $departureTime;
    
    /** @var \OpenAPIServer\Model\RequestTimeMapProperty[] $properties */
    private $properties;
    
    /** @var \OpenAPIServer\Model\RequestRangeNoMaxResults $range */
    private $range;
}
