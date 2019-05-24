<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseDistanceBreakdownItem
{
    /**
     * @DTA\Data(field="mode")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseTransportationMode::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseTransportationMode::class})
     * @var \App\DTO\ResponseTransportationMode
     */
    public $mode;
    /**
     * @DTA\Data(field="distance")
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $distance;
}
