<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class RequestTimeFilterPostcodes
{
    /**
     * @DTA\Data(field="departure_searches", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestTimeFilterPostcodesDepartureSearch::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestTimeFilterPostcodesDepartureSearch::class}}
     * }})
     * @var \App\DTO\RequestTimeFilterPostcodesDepartureSearch[]
     */
    public $departure_searches;
    /**
     * @DTA\Data(field="arrival_searches", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestTimeFilterPostcodesArrivalSearch::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestTimeFilterPostcodesArrivalSearch::class}}
     * }})
     * @var \App\DTO\RequestTimeFilterPostcodesArrivalSearch[]
     */
    public $arrival_searches;
}
