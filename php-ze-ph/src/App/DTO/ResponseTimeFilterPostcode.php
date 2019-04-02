<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeFilterPostcode
{
    /**
     * @DTA\Data(field="code")
     * @DTA\Strategy(name="Object", options={"type":String::class})
     * @DTA\Validator(name="Dictionary", options={"type":String::class})
     * @var String
     */
    public $code;
    /**
     * @DTA\Data(field="properties")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseTimeFilterPostcodesProperties::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseTimeFilterPostcodesProperties::class}}
     * }})
     * @var \App\DTO\ResponseTimeFilterPostcodesProperties[]
     */
    public $properties;
}
