<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeMapBoundingBoxes
{
    /**
     * @DTA\Data(field="results")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseTimeMapBoundingBoxesResult::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseTimeMapBoundingBoxesResult::class}}
     * }})
     * @var \App\DTO\ResponseTimeMapBoundingBoxesResult[]
     */
    public $results;
}
