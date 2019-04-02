<?php
/**
 * RequestTimeFilterPostcodeDistrictsArrivalSearch
 */
namespace OpenAPIServer\Model;

/**
 * RequestTimeFilterPostcodeDistrictsArrivalSearch
 */
class RequestTimeFilterPostcodeDistrictsArrivalSearch
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
    
    /** @var \OpenAPIServer\Model\RequestTimeFilterPostcodeDistrictsProperty[] $properties */
    private $properties;
    
    /** @var \OpenAPIServer\Model\RequestRangeFull $range */
    private $range;
}
