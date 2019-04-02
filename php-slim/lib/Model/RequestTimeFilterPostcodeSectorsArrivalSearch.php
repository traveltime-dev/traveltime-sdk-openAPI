<?php
/**
 * RequestTimeFilterPostcodeSectorsArrivalSearch
 */
namespace OpenAPIServer\Model;

/**
 * RequestTimeFilterPostcodeSectorsArrivalSearch
 */
class RequestTimeFilterPostcodeSectorsArrivalSearch
{
    
    /** @var string $id */
    private $id;
    
    /** @var \OpenAPIServer\Model\RequestTransportation $transportation */
    private $transportation;
    
    /** @var int $travelTime */
    private $travelTime;
    
    /** @var \DateTime $arrivalTime */
    private $arrivalTime;
    
    /** @var double $reachablePostcodesThreshold */
    private $reachablePostcodesThreshold;
    
    /** @var \OpenAPIServer\Model\RequestTimeFilterPostcodeSectorsProperty[] $properties */
    private $properties;
    
    /** @var \OpenAPIServer\Model\RequestRangeFull $range */
    private $range;
}
