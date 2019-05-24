<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseRoutesProperties
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
