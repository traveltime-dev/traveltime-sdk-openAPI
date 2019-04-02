<?php
/**
 * RequestTimeFilterPostcodesArrivalSearch
 */
namespace OpenAPIServer\Model;

/**
 * RequestTimeFilterPostcodesArrivalSearch
 */
class RequestTimeFilterPostcodesArrivalSearch
{
    
    /** @var string $id */
    private $id;
    
    /** @var \OpenAPIServer\Model\RequestTransportation $transportation */
    private $transportation;
    
    /** @var int $travelTime */
    private $travelTime;
    
    /** @var \DateTime $arrivalTime */
    private $arrivalTime;
    
    /** @var \OpenAPIServer\Model\RequestTimeFilterPostcodesProperty[] $properties */
    private $properties;
    
    /** @var \OpenAPIServer\Model\RequestRangeFull $range */
    private $range;
}
