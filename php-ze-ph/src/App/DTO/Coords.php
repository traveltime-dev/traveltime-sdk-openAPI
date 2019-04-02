<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class Coords
{
    /**
     * @DTA\Data(field="lat")
     * @DTA\Validator(name="Type", options={"type":"float"})
     * @var float
     */
    public $lat;
    /**
     * @DTA\Data(field="lng")
     * @DTA\Validator(name="Type", options={"type":"float"})
     * @var float
     */
    public $lng;
}
