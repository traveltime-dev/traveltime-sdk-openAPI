<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseFares
{
    /**
     * @DTA\Data(field="breakdown")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseFaresBreakdownItem::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseFaresBreakdownItem::class}}
     * }})
     * @var \App\DTO\ResponseFaresBreakdownItem[]
     */
    public $breakdown;
    /**
     * @DTA\Data(field="tickets_total")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseFareTicket::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseFareTicket::class}}
     * }})
     * @var \App\DTO\ResponseFareTicket[]
     */
    public $tickets_total;
}
