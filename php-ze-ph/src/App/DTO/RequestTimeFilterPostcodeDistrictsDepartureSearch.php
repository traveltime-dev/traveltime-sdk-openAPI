<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class RequestTimeFilterPostcodeDistrictsDepartureSearch
{
    /**
     * @DTA\Data(field="id")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $id;
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
     * @DTA\Data(field="departure_time")
     * @DTA\Strategy(name="DateTime")
     * @DTA\Validator(name="Date", options={"format": \DateTime::RFC3339})
     * @var \DateTime
     */
    public $departure_time;
    /**
     * @DTA\Data(field="reachable_postcodes_threshold")
     * @DTA\Validator(name="Type", options={"type":"float"})
     * @var float
     */
    public $reachable_postcodes_threshold;
    /**
     * @DTA\Data(field="properties")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestTimeFilterPostcodeDistrictsProperty::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestTimeFilterPostcodeDistrictsProperty::class}}
     * }})
     * @var \App\DTO\RequestTimeFilterPostcodeDistrictsProperty[]
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
