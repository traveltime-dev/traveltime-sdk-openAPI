<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeFilterFastResult
{
    /**
     * @DTA\Data(field="search_id")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $search_id;
    /**
     * @DTA\Data(field="locations")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseTimeFilterFastLocation::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseTimeFilterFastLocation::class}}
     * }})
     * @var \App\DTO\ResponseTimeFilterFastLocation[]
     */
    public $locations;
    /**
     * @DTA\Data(field="unreachable")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Type", "options":{"type":"string"}}
     * }})
     * @var string[]
     */
    public $unreachable;
}
