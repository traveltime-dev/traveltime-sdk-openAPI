<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class RequestTransportationFast
{
    /**
     * @DTA\Data(field="type")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $type;
}
