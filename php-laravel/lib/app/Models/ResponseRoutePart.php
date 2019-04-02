<?php
/**
 * ResponseRoutePart
 */
namespace app\Models;

/**
 * ResponseRoutePart
 */
class ResponseRoutePart {

    /** @var string $id */
    private $id;

    /** @var string $type */
    private $type;

    /** @var \app\Models\ResponseTransportationMode $mode */
    private $mode;

    /** @var string $directions */
    private $directions;

    /** @var int $distance */
    private $distance;

    /** @var int $travelTime */
    private $travelTime;

    /** @var \app\Models\Coords[] $coords */
    private $coords;

    /** @var string $direction */
    private $direction;

    /** @var string $road */
    private $road;

    /** @var string $turn */
    private $turn;

    /** @var string $line */
    private $line;

    /** @var string $departureStation */
    private $departureStation;

    /** @var string $arrivalStation */
    private $arrivalStation;

    /** @var string $departsAt */
    private $departsAt;

    /** @var string $arrivesAt */
    private $arrivesAt;

    /** @var int $numStops */
    private $numStops;

}
