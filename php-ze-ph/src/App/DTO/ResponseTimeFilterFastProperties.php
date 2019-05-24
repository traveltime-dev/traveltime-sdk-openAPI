<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseTimeFilterFastProperties
{
    /**
     * @DTA\Data(field="travel_time", nullable=true)
     * @DTA\Validator(name="Type", options={"type":"int"})
     * @var int
     */
    public $travel_time;
    /**
     * @DTA\Data(field="fares", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseFaresFast::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseFaresFast::class})
     * @var \App\DTO\ResponseFaresFast
     */
    public $fares;
}
