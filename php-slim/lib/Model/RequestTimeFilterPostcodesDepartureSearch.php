<?php
/**
 * RequestTimeFilterPostcodesDepartureSearch
 */
namespace OpenAPIServer\Model;

/**
 * RequestTimeFilterPostcodesDepartureSearch
 */
class RequestTimeFilterPostcodesDepartureSearch
{
    
    /** @var string $id */
    private $id;
    
    /** @var \OpenAPIServer\Model\RequestTransportation $transportation */
    private $transportation;
    
    /** @var int $travelTime */
    private $travelTime;
    
    /** @var \DateTime $departureTime */
    private $departureTime;
    
    /** @var \OpenAPIServer\Model\RequestTimeFilterPostcodesProperty[] $properties */
    private $properties;
    
    /** @var \OpenAPIServer\Model\RequestRangeFull $range */
    private $range;
}
