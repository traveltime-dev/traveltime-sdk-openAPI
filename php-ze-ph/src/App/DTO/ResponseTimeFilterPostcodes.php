<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeFilterPostcodes
{
    /**
     * @DTA\Data(field="results")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseTimeFilterPostcodesResult::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseTimeFilterPostcodesResult::class}}
     * }})
     * @var \App\DTO\ResponseTimeFilterPostcodesResult[]
     */
    public $results;
}
