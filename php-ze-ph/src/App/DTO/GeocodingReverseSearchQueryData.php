<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Query parameters for geocodingReverseSearch
 */
class GeocodingReverseSearchQueryData
{
    /**
     * @DTA\Data(field="within.country", nullable=true)
     * @DTA\Strategy(name="QueryParameter", options={"type":"string"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"string"})
     * @var string
     */
    public $within_country;
    /**
     * @DTA\Data(field="focus.lat")
     * @DTA\Strategy(name="QueryParameter", options={"type":"float"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"float"})
     * @var float
     */
    public $focus_lat;
    /**
     * @DTA\Data(field="focus.lng")
     * @DTA\Strategy(name="QueryParameter", options={"type":"float"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"float"})
     * @var float
     */
    public $focus_lng;
}
