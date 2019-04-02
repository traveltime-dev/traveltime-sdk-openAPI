<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTravelTimeStatistics
{
    /**
     * @DTA\Data(field="min")
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $min;
    /**
     * @DTA\Data(field="max")
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $max;
    /**
     * @DTA\Data(field="mean")
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $mean;
    /**
     * @DTA\Data(field="median")
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $median;
}
