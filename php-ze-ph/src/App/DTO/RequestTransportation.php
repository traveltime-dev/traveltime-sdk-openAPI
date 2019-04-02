<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class RequestTransportation
{
    /**
     * @DTA\Data(field="type")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $type;
    /**
     * @DTA\Data(field="pt_change_delay", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $pt_change_delay;
    /**
     * @DTA\Data(field="walking_time", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $walking_time;
    /**
     * @DTA\Data(field="driving_time_to_station", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $driving_time_to_station;
    /**
     * @DTA\Data(field="parking_time", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $parking_time;
    /**
     * @DTA\Data(field="boarding_time", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $boarding_time;
}
