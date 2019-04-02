<?php
/**
 * ResponseRoute
 */
namespace OpenAPIServer\Model;

/**
 * ResponseRoute
 */
class ResponseRoute
{
    
    /** @var \DateTime $departureTime */
    private $departureTime;
    
    /** @var \DateTime $arrivalTime */
    private $arrivalTime;
    
    /** @var \OpenAPIServer\Model\ResponseRoutePart[] $parts */
    private $parts;
}
