<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseRoutes
{
    /**
     * @DTA\Data(field="results")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseRoutesResult::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseRoutesResult::class}}
     * }})
     * @var \App\DTO\ResponseRoutesResult[]
     */
    public $results;
}
