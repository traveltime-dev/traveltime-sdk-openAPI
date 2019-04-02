<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class RequestTimeFilterPostcodeDistricts
{
    /**
     * @DTA\Data(field="departure_searches", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestTimeFilterPostcodeDistrictsDepartureSearch::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestTimeFilterPostcodeDistrictsDepartureSearch::class}}
     * }})
     * @var \App\DTO\RequestTimeFilterPostcodeDistrictsDepartureSearch[]
     */
    public $departure_searches;
    /**
     * @DTA\Data(field="arrival_searches", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestTimeFilterPostcodeDistrictsArrivalSearch::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestTimeFilterPostcodeDistrictsArrivalSearch::class}}
     * }})
     * @var \App\DTO\RequestTimeFilterPostcodeDistrictsArrivalSearch[]
     */
    public $arrival_searches;
}
