<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseGeocodingProperties
{
    /**
     * @DTA\Data(field="name")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $name;
    /**
     * @DTA\Data(field="label")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $label;
    /**
     * @DTA\Data(field="score", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"float"})
     * @var float
     */
    public $score;
    /**
     * @DTA\Data(field="house_number", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $house_number;
    /**
     * @DTA\Data(field="street", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $street;
    /**
     * @DTA\Data(field="region", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $region;
    /**
     * @DTA\Data(field="region_code", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $region_code;
    /**
     * @DTA\Data(field="neighbourhood", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $neighbourhood;
    /**
     * @DTA\Data(field="county", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $county;
    /**
     * @DTA\Data(field="macroregion", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $macroregion;
    /**
     * @DTA\Data(field="city", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $city;
    /**
     * @DTA\Data(field="country", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $country;
    /**
     * @DTA\Data(field="country_code", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $country_code;
    /**
     * @DTA\Data(field="continent", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $continent;
    /**
     * @DTA\Data(field="postcode", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $postcode;
    /**
     * @DTA\Data(field="features", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseMapInfoFeatures::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseMapInfoFeatures::class})
     * @var \App\DTO\ResponseMapInfoFeatures
     */
    public $features;
}
