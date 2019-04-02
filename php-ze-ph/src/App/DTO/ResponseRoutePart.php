<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseRoutePart
{
    /**
     * @DTA\Data(field="id")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $id;
    /**
     * @DTA\Data(field="type")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $type;
    /**
     * @DTA\Data(field="mode")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseTransportationMode::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseTransportationMode::class})
     * @var \App\DTO\ResponseTransportationMode
     */
    public $mode;
    /**
     * @DTA\Data(field="directions")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $directions;
    /**
     * @DTA\Data(field="distance")
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $distance;
    /**
     * @DTA\Data(field="travel_time")
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $travel_time;
    /**
     * @DTA\Data(field="coords")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\Coords::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\Coords::class}}
     * }})
     * @var \App\DTO\Coords[]
     */
    public $coords;
    /**
     * @DTA\Data(field="direction", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $direction;
    /**
     * @DTA\Data(field="road", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $road;
    /**
     * @DTA\Data(field="turn", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $turn;
    /**
     * @DTA\Data(field="line", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $line;
    /**
     * @DTA\Data(field="departure_station", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $departure_station;
    /**
     * @DTA\Data(field="arrival_station", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $arrival_station;
    /**
     * @DTA\Data(field="departs_at", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $departs_at;
    /**
     * @DTA\Data(field="arrives_at", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $arrives_at;
    /**
     * @DTA\Data(field="num_stops", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $num_stops;
}
