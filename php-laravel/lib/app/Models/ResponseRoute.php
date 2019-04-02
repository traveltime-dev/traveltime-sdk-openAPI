<?php
/**
 * ResponseRoute
 */
namespace app\Models;

/**
 * ResponseRoute
 */
class ResponseRoute {

    /** @var \DateTime $departureTime */
    private $departureTime;

    /** @var \DateTime $arrivalTime */
    private $arrivalTime;

    /** @var \app\Models\ResponseRoutePart[] $parts */
    private $parts;

}
