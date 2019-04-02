<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseGeocodingGeoJsonFeature
{
    /**
     * @DTA\Data(field="type")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $type;
    /**
     * @DTA\Data(field="geometry")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseGeocodingGeometry::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseGeocodingGeometry::class})
     * @var \App\DTO\ResponseGeocodingGeometry
     */
    public $geometry;
    /**
     * @DTA\Data(field="properties")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseGeocodingProperties::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseGeocodingProperties::class})
     * @var \App\DTO\ResponseGeocodingProperties
     */
    public $properties;
}
