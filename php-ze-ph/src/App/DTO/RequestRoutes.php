<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class RequestRoutes
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
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestRoutesDepartureSearch::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestRoutesDepartureSearch::class}}
     * }})
     * @var \App\DTO\RequestRoutesDepartureSearch[]
     */
    public $departure_searches;
    /**
     * @DTA\Data(field="arrival_searches", nullable=true)
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\RequestRoutesArrivalSearch::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\RequestRoutesArrivalSearch::class}}
     * }})
     * @var \App\DTO\RequestRoutesArrivalSearch[]
     */
    public $arrival_searches;
}
