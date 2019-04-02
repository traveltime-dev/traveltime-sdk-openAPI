<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeFilterPostcodeSectorsResult
{
    /**
     * @DTA\Data(field="search_id")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $search_id;
    /**
     * @DTA\Data(field="sectors")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseTimeFilterPostcodeSector::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseTimeFilterPostcodeSector::class}}
     * }})
     * @var \App\DTO\ResponseTimeFilterPostcodeSector[]
     */
    public $sectors;
}
