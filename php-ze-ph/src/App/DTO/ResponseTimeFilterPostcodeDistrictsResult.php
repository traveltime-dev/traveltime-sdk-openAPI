<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeFilterPostcodeDistrictsResult
{
    /**
     * @DTA\Data(field="search_id")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $search_id;
    /**
     * @DTA\Data(field="districts")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseTimeFilterPostcodeDistrict::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseTimeFilterPostcodeDistrict::class}}
     * }})
     * @var \App\DTO\ResponseTimeFilterPostcodeDistrict[]
     */
    public $districts;
}
