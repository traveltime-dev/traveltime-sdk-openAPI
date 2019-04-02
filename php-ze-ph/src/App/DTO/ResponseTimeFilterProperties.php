<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeFilterProperties
{
    /**
     * @DTA\Data(field="travel_time", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $travel_time;
    /**
     * @DTA\Data(field="distance", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $distance;
    /**
     * @DTA\Data(field="distance_breakdown", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseDistanceBreakdownItem::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseDistanceBreakdownItem::class}}
     * }})
     * @var \App\DTO\ResponseDistanceBreakdownItem[]
     */
    public $distance_breakdown;
    /**
     * @DTA\Data(field="fares", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseFares::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseFares::class})
     * @var \App\DTO\ResponseFares
     */
    public $fares;
    /**
     * @DTA\Data(field="route", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseRoute::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseRoute::class})
     * @var \App\DTO\ResponseRoute
     */
    public $route;
}
