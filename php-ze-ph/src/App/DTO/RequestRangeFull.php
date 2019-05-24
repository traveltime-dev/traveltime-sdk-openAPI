<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class RequestRangeFull
{
    /**
     * @DTA\Data(field="enabled")
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $enabled;
    /**
     * @DTA\Data(field="max_results")
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @DTA\Validator(name="GreaterThan", options={"min":1, "inclusive":true})
     * @DTA\Validator(name="LessThan", options={"max":5, "inclusive":true})
     * @var int
     */
    public $max_results;
    /**
     * @DTA\Data(field="width")
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @DTA\Validator(name="GreaterThan", options={"min":1, "inclusive":true})
     * @DTA\Validator(name="LessThan", options={"max":43200, "inclusive":true})
     * @var int
     */
    public $width;
}
