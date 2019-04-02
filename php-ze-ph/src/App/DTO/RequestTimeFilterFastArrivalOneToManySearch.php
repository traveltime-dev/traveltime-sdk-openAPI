<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class RequestTimeFilterFastArrivalOneToManySearch
{
    /**
     * @DTA\Data(field="id")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $id;
    /**
     * @DTA\Data(field="departure_location_id")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $departure_location_id;
    /**
     * @DTA\Data(field="arrival_location_ids")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Type", "options":{"type":"string"}}
     * }})
     * @var string[]
     */
    public $arrival_location_ids;
    /**
     * @DTA\Data(field="transportation")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\RequestTransportationFast::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\RequestTransportationFast::class})
     * @var \App\DTO\RequestTransportationFast
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
     * @DTA\Data(field="arrival_time_period")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\RequestArrivalTimePeriod::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\RequestArrivalTimePeriod::class})
     * @var \App\DTO\RequestArrivalTimePeriod
     */
    public $arrival_time_period;
    /**
     * @DTA\Data(field="properties")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestTimeFilterFastProperty::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestTimeFilterFastProperty::class}}
     * }})
     * @var \App\DTO\RequestTimeFilterFastProperty[]
     */
    public $properties;
}
