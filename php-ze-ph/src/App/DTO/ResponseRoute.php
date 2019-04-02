<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseRoute
{
    /**
     * @DTA\Data(field="departure_time")
     * @DTA\Strategy(name="DateTime")
     * @DTA\Validator(name="Date", options={"format": \DateTime::RFC3339})
     * @var \DateTime
     */
    public $departure_time;
    /**
     * @DTA\Data(field="arrival_time")
     * @DTA\Strategy(name="DateTime")
     * @DTA\Validator(name="Date", options={"format": \DateTime::RFC3339})
     * @var \DateTime
     */
    public $arrival_time;
    /**
     * @DTA\Data(field="parts")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseRoutePart::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseRoutePart::class}}
     * }})
     * @var \App\DTO\ResponseRoutePart[]
     */
    public $parts;
}
