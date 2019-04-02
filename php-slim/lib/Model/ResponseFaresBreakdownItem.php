<?php
/**
 * ResponseFaresBreakdownItem
 */
namespace OpenAPIServer\Model;

/**
 * ResponseFaresBreakdownItem
 */
class ResponseFaresBreakdownItem
{
    
    /** @var \OpenAPIServer\Model\ResponseTransportationMode[] $modes */
    private $modes;
    
    /** @var int[] $routePartIds */
    private $routePartIds;
    
    /** @var \OpenAPIServer\Model\ResponseFareTicket[] $tickets */
    private $tickets;
}
