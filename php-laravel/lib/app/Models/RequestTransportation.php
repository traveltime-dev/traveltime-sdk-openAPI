<?php
/**
 * RequestTransportation
 */
namespace app\Models;

/**
 * RequestTransportation
 */
class RequestTransportation {

    /** @var string $type */
    private $type;

    /** @var bool $disableBorderCrossing */
    private $disableBorderCrossing;

    /** @var int $ptChangeDelay */
    private $ptChangeDelay;

    /** @var int $walkingTime */
    private $walkingTime;

    /** @var int $drivingTimeToStation */
    private $drivingTimeToStation;

    /** @var int $cyclingTimeToStation */
    private $cyclingTimeToStation;

    /** @var int $parkingTime */
    private $parkingTime;

    /** @var int $boardingTime */
    private $boardingTime;

}
