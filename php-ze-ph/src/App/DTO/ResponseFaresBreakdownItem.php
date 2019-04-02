<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseFaresBreakdownItem
{
    /**
     * @DTA\Data(field="modes")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseTransportationMode::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseTransportationMode::class}}
     * }})
     * @var \App\DTO\ResponseTransportationMode[]
     */
    public $modes;
    /**
     * @DTA\Data(field="route_part_ids")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Type", "options":{"type":"int"}}
     * }})
     * @var int[]
     */
    public $route_part_ids;
    /**
     * @DTA\Data(field="tickets")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseFareTicket::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseFareTicket::class}}
     * }})
     * @var \App\DTO\ResponseFareTicket[]
     */
    public $tickets;
}
