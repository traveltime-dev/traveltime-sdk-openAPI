<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeMapWktResult
{
    /**
     * @DTA\Data(field="search_id")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $search_id;
    /**
     * @DTA\Data(field="shape")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $shape;
    /**
     * @DTA\Data(field="properties")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseTimeMapProperties::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseTimeMapProperties::class})
     * @var \App\DTO\ResponseTimeMapProperties
     */
    public $properties;
}
