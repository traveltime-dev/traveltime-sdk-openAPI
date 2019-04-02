<?php
/**
 * ResponseFaresBreakdownItem
 */
namespace app\Models;

/**
 * ResponseFaresBreakdownItem
 */
class ResponseFaresBreakdownItem {

    /** @var \app\Models\ResponseTransportationMode[] $modes */
    private $modes;

    /** @var int[] $routePartIds */
    private $routePartIds;

    /** @var \app\Models\ResponseFareTicket[] $tickets */
    private $tickets;

}
