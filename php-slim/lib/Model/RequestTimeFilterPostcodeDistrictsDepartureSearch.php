<?php
/**
 * RequestTimeFilterPostcodeDistrictsDepartureSearch
 */
namespace OpenAPIServer\Model;

/**
 * RequestTimeFilterPostcodeDistrictsDepartureSearch
 */
class RequestTimeFilterPostcodeDistrictsDepartureSearch
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
    
    /** @var \OpenAPIServer\Model\RequestTimeFilterPostcodeDistrictsProperty[] $properties */
    private $properties;
    
    /** @var \OpenAPIServer\Model\RequestRangeFull $range */
    private $range;
}
