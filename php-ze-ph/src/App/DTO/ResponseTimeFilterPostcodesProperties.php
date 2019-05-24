<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeFilterPostcodesProperties
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
}
