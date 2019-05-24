<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeFilterPostcodeSector
{
    /**
     * @DTA\Data(field="code")
     * @DTA\Strategy(name="Object", options={"type":String::class})
     * @DTA\Validator(name="Dictionary", options={"type":String::class})
     * @var String
     */
    public $code;
    /**
     * @DTA\Data(field="properties")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseTimeFilterPostcodeSectorProperties::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseTimeFilterPostcodeSectorProperties::class})
     * @var \App\DTO\ResponseTimeFilterPostcodeSectorProperties
     */
    public $properties;
}
