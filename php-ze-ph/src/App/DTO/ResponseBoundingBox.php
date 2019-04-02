<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseBoundingBox
{
    /**
     * @DTA\Data(field="envelope")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseBox::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseBox::class})
     * @var \App\DTO\ResponseBox
     */
    public $envelope;
    /**
     * @DTA\Data(field="boxes")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseBox::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseBox::class}}
     * }})
     * @var \App\DTO\ResponseBox[]
     */
    public $boxes;
}
