<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class RequestTimeFilterArrivalSearch
{
    /**
     * @DTA\Data(field="id")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $id;
    /**
     * @DTA\Data(field="departure_location_ids")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Type", "options":{"type":"string"}}
     * }})
     * @var string[]
     */
    public $departure_location_ids;
    /**
     * @DTA\Data(field="arrival_location_id")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $arrival_location_id;
    /**
     * @DTA\Data(field="transportation")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\RequestTransportation::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\RequestTransportation::class})
     * @var \App\DTO\RequestTransportation
     */
    public $transportation;
    /**
     * @DTA\Data(field="travel_time")
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @DTA\Validator(name="GreaterThan", options={"min":60, "inclusive":true})
     * @DTA\Validator(name="LessThan", options={"max":14400, "inclusive":true})
     * @var int
     */
    public $travel_time;
    /**
     * @DTA\Data(field="arrival_time")
     * @DTA\Strategy(name="DateTime")
     * @DTA\Validator(name="Date", options={"format": \DateTime::RFC3339})
     * @var \DateTime
     */
    public $arrival_time;
    /**
     * @DTA\Data(field="properties")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestTimeFilterProperty::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestTimeFilterProperty::class}}
     * }})
     * @var \App\DTO\RequestTimeFilterProperty[]
     */
    public $properties;
    /**
     * @DTA\Data(field="range", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\RequestRangeFull::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\RequestRangeFull::class})
     * @var \App\DTO\RequestRangeFull
     */
    public $range;
}
