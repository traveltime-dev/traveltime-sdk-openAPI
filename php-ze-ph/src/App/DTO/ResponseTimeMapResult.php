<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeMapResult
{
    /**
     * @DTA\Data(field="search_id")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $search_id;
    /**
     * @DTA\Data(field="shapes")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseShape::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseShape::class}}
     * }})
     * @var \App\DTO\ResponseShape[]
     */
    public $shapes;
    /**
     * @DTA\Data(field="properties")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseTimeMapProperties::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseTimeMapProperties::class})
     * @var \App\DTO\ResponseTimeMapProperties
     */
    public $properties;
}
