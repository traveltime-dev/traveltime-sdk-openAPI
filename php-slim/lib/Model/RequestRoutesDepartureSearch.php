<?php
/**
 * RequestRoutesDepartureSearch
 */
namespace OpenAPIServer\Model;

/**
 * RequestRoutesDepartureSearch
 */
class RequestRoutesDepartureSearch
{
    
    /** @var string $id */
    private $id;
    
    /** @var string $departureLocationId */
    private $departureLocationId;
    
    /** @var string[] $arrivalLocationIds */
    private $arrivalLocationIds;
    
    /** @var \OpenAPIServer\Model\RequestTransportation $transportation */
    private $transportation;
    
    /** @var \DateTime $departureTime */
    private $departureTime;
    
    /** @var \OpenAPIServer\Model\RequestRoutesProperty[] $properties */
    private $properties;
    
    /** @var \OpenAPIServer\Model\RequestRangeFull $range */
    private $range;
}
