<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class RequestTimeFilterFastArrivalSearches
{
    /**
     * @DTA\Data(field="many_to_one", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestTimeFilterFastArrivalManyToOneSearch::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestTimeFilterFastArrivalManyToOneSearch::class}}
     * }})
     * @var \App\DTO\RequestTimeFilterFastArrivalManyToOneSearch[]
     */
    public $many_to_one;
    /**
     * @DTA\Data(field="one_to_many", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestTimeFilterFastArrivalOneToManySearch::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestTimeFilterFastArrivalOneToManySearch::class}}
     * }})
     * @var \App\DTO\RequestTimeFilterFastArrivalOneToManySearch[]
     */
    public $one_to_many;
}
