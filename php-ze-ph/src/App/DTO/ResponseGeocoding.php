<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseGeocoding
{
    /**
     * @DTA\Data(field="type")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $type;
    /**
     * @DTA\Data(field="features")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseGeocodingGeoJsonFeature::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseGeocodingGeoJsonFeature::class}}
     * }})
     * @var \App\DTO\ResponseGeocodingGeoJsonFeature[]
     */
    public $features;
}
