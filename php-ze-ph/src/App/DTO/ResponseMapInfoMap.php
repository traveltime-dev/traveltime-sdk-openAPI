<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseMapInfoMap
{
    /**
     * @DTA\Data(field="name")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $name;
    /**
     * @DTA\Data(field="features")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseMapInfoFeatures::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseMapInfoFeatures::class})
     * @var \App\DTO\ResponseMapInfoFeatures
     */
    public $features;
}
