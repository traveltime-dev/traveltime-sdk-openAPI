<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class RequestTimeMapDepartureSearch
{
    /**
     * @DTA\Data(field="id")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $id;
    /**
     * @DTA\Data(field="coords")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Coords::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\Coords::class})
     * @var \App\DTO\Coords
     */
    public $coords;
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
     * @DTA\Data(field="properties", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestTimeMapProperty::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestTimeMapProperty::class}}
     * }})
     * @var \App\DTO\RequestTimeMapProperty[]
     */
    public $properties;
    /**
     * @DTA\Data(field="range", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\RequestRangeNoMaxResults::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\RequestRangeNoMaxResults::class})
     * @var \App\DTO\RequestRangeNoMaxResults
     */
    public $range;
}
