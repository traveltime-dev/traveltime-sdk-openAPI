<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class RequestTimeFilter
{
    /**
     * @DTA\Data(field="locations")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestLocation::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestLocation::class}}
     * }})
     * @var \App\DTO\RequestLocation[]
     */
    public $locations;
    /**
     * @DTA\Data(field="departure_searches", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestTimeFilterDepartureSearch::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestTimeFilterDepartureSearch::class}}
     * }})
     * @var \App\DTO\RequestTimeFilterDepartureSearch[]
     */
    public $departure_searches;
    /**
     * @DTA\Data(field="arrival_searches", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestTimeFilterArrivalSearch::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestTimeFilterArrivalSearch::class}}
     * }})
     * @var \App\DTO\RequestTimeFilterArrivalSearch[]
     */
    public $arrival_searches;
}
