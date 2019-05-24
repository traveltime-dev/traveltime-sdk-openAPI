<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Query parameters for geocodingSearch
 */
class GeocodingSearchQueryData
{
    /**
     * @DTA\Data(field="within.country", nullable=true)
     * @DTA\Strategy(name="QueryParameter", options={"type":"string"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"string"})
     * @var string
     */
    public $within_country;
    /**
     * @DTA\Data(field="query")
     * @DTA\Strategy(name="QueryParameter", options={"type":"string"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"string"})
     * @var string
     */
    public $query;
    /**
     * @DTA\Data(field="focus.lat", nullable=true)
     * @DTA\Strategy(name="QueryParameter", options={"type":"float"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"float"})
     * @var float
     */
    public $focus_lat;
    /**
     * @DTA\Data(field="focus.lng", nullable=true)
     * @DTA\Strategy(name="QueryParameter", options={"type":"float"})
     * @DTA\Validator(name="QueryParameterType", options={"type":"float"})
     * @var float
     */
    public $focus_lng;
}
