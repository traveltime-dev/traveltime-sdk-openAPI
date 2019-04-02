<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeMapWkt
{
    /**
     * @DTA\Data(field="results")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseTimeMapWktResult::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseTimeMapWktResult::class}}
     * }})
     * @var \App\DTO\ResponseTimeMapWktResult[]
     */
    public $results;
}
