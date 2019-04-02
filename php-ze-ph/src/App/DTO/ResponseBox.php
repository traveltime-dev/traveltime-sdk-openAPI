<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseBox
{
    /**
     * @DTA\Data(field="min_lat")
     * @DTA\Validator(name="Type", options={"type":"float"})
     * @var float
     */
    public $min_lat;
    /**
     * @DTA\Data(field="max_lat")
     * @DTA\Validator(name="Type", options={"type":"float"})
     * @var float
     */
    public $max_lat;
    /**
     * @DTA\Data(field="min_lng")
     * @DTA\Validator(name="Type", options={"type":"float"})
     * @var float
     */
    public $min_lng;
    /**
     * @DTA\Data(field="max_lng")
     * @DTA\Validator(name="Type", options={"type":"float"})
     * @var float
     */
    public $max_lng;
}
