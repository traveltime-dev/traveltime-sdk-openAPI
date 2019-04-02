<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseFaresFast
{
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
