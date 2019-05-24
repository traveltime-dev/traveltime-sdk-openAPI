<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class RequestTimeFilterFast
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
     * @DTA\Data(field="arrival_searches")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\RequestTimeFilterFastArrivalSearches::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\RequestTimeFilterFastArrivalSearches::class})
     * @var \App\DTO\RequestTimeFilterFastArrivalSearches
     */
    public $arrival_searches;
}
