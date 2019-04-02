<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeFilterPostcodeSectorProperties
{
    /**
     * @DTA\Data(field="travel_time_reachable", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseTravelTimeStatistics::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseTravelTimeStatistics::class})
     * @var \App\DTO\ResponseTravelTimeStatistics
     */
    public $travel_time_reachable;
    /**
     * @DTA\Data(field="travel_time_all", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseTravelTimeStatistics::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseTravelTimeStatistics::class})
     * @var \App\DTO\ResponseTravelTimeStatistics
     */
    public $travel_time_all;
    /**
     * @DTA\Data(field="coverage", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"float"})
     * @var float
     */
    public $coverage;
}
