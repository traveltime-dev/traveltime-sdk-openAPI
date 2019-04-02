<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseMapInfoFeatures
{
    /**
     * @DTA\Data(field="public_transport", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ResponseMapInfoFeaturesPublicTransport::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\ResponseMapInfoFeaturesPublicTransport::class})
     * @var \App\DTO\ResponseMapInfoFeaturesPublicTransport
     */
    public $public_transport;
    /**
     * @DTA\Data(field="fares")
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $fares;
    /**
     * @DTA\Data(field="postcodes")
     * @DTA\Validator(name="Type", options={"type":"bool"})
     * @var bool
     */
    public $postcodes;
}
