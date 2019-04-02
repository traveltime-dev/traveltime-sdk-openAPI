<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeMapBoundingBoxesResult
{
    /**
     * @DTA\Data(field="search_id")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $search_id;
    /**
     * @DTA\Data(field="bounding_boxes")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseBoundingBox::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseBoundingBox::class}}
     * }})
     * @var \App\DTO\ResponseBoundingBox[]
     */
    public $bounding_boxes;
    /**
     * @DTA\Data(field="properties")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseTimeMapProperties::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseTimeMapProperties::class})
     * @var \App\DTO\ResponseTimeMapProperties
     */
    public $properties;
}
