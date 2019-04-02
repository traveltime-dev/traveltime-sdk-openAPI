<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseSupportedLocation
{
    /**
     * @DTA\Data(field="id")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $id;
    /**
     * @DTA\Data(field="map_name")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $map_name;
}
