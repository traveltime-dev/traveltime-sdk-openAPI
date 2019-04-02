<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseFareTicket
{
    /**
     * @DTA\Data(field="type")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $type;
    /**
     * @DTA\Data(field="price")
     * @DTA\Validator(name="Type", options={"type":"float"})
     * @var float
     */
    public $price;
    /**
     * @DTA\Data(field="currency")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $currency;
}
