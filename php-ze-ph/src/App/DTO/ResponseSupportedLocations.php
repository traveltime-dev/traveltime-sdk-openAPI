<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseSupportedLocations
{
    /**
     * @DTA\Data(field="locations")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseSupportedLocation::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseSupportedLocation::class}}
     * }})
     * @var \App\DTO\ResponseSupportedLocation[]
     */
    public $locations;
    /**
     * @DTA\Data(field="unsupported_locations")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Type", "options":{"type":"string"}}
     * }})
     * @var string[]
     */
    public $unsupported_locations;
}
