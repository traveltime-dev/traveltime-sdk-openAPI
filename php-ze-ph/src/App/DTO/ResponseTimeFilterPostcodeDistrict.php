<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeFilterPostcodeDistrict
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
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseTimeFilterPostcodeDistrictProperties::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseTimeFilterPostcodeDistrictProperties::class})
     * @var \App\DTO\ResponseTimeFilterPostcodeDistrictProperties
     */
    public $properties;
}
