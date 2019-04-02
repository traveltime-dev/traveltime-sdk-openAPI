<?php
/**
 * RequestTimeFilterPostcodeSectorsDepartureSearch
 */
namespace OpenAPIServer\Model;

/**
 * RequestTimeFilterPostcodeSectorsDepartureSearch
 */
class RequestTimeFilterPostcodeSectorsDepartureSearch
{
    
    /** @var string $id */
    private $id;
    
    /** @var \OpenAPIServer\Model\RequestTransportation $transportation */
    private $transportation;
    
    /** @var int $travelTime */
    private $travelTime;
    
    /** @var \DateTime $departureTime */
    private $departureTime;
    
    /** @var double $reachablePostcodesThreshold */
    private $reachablePostcodesThreshold;
    
    /** @var \OpenAPIServer\Model\RequestTimeFilterPostcodeSectorsProperty[] $properties */
    private $properties;
    
    /** @var \OpenAPIServer\Model\RequestRangeFull $range */
    private $range;
}
