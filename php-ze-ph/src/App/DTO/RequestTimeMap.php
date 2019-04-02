<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class RequestTimeMap
{
    /**
     * @DTA\Data(field="departure_searches", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestTimeMapDepartureSearch::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestTimeMapDepartureSearch::class}}
     * }})
     * @var \App\DTO\RequestTimeMapDepartureSearch[]
     */
    public $departure_searches;
    /**
     * @DTA\Data(field="arrival_searches", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestTimeMapArrivalSearch::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestTimeMapArrivalSearch::class}}
     * }})
     * @var \App\DTO\RequestTimeMapArrivalSearch[]
     */
    public $arrival_searches;
    /**
     * @DTA\Data(field="unions", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestUnionOnIntersection::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestUnionOnIntersection::class}}
     * }})
     * @var \App\DTO\RequestUnionOnIntersection[]
     */
    public $unions;
    /**
     * @DTA\Data(field="intersections", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestUnionOnIntersection::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestUnionOnIntersection::class}}
     * }})
     * @var \App\DTO\RequestUnionOnIntersection[]
     */
    public $intersections;
}
