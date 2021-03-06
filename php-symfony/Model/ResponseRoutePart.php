<?php
/**
 * ResponseRoutePart
 *
 * PHP version 7.1.3
 *
 * @category Class
 * @package  OpenAPI\Server\Model
 * @author   OpenAPI Generator team
 * @link     https://github.com/openapitools/openapi-generator
 */

/**
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 *
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 * Do not edit the class manually.
 */

namespace OpenAPI\Server\Model;

use Symfony\Component\Validator\Constraints as Assert;
use JMS\Serializer\Annotation\Type;
use JMS\Serializer\Annotation\SerializedName;

/**
 * Class representing the ResponseRoutePart model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class ResponseRoutePart 
{
        /**
     * @var string
     * @SerializedName("id")
     * @Assert\NotNull()
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $id;

    /**
     * @var string
     * @SerializedName("type")
     * @Assert\NotNull()
     * @Assert\Choice({ "basic", "start_end", "road", "public_transport" })
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $type;

    /**
     * @var OpenAPI\Server\Model\ResponseTransportationMode
     * @SerializedName("mode")
     * @Assert\NotNull()
     * @Assert\Valid()
     * @Assert\Type("OpenAPI\Server\Model\ResponseTransportationMode")
     * @Type("OpenAPI\Server\Model\ResponseTransportationMode")
     */
    protected $mode;

    /**
     * @var string
     * @SerializedName("directions")
     * @Assert\NotNull()
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $directions;

    /**
     * @var int
     * @SerializedName("distance")
     * @Assert\NotNull()
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $distance;

    /**
     * @var int
     * @SerializedName("travel_time")
     * @Assert\NotNull()
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $travelTime;

    /**
     * @var OpenAPI\Server\Model\Coords[]
     * @SerializedName("coords")
     * @Assert\NotNull()
     * @Assert\Valid()
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\Coords")
     * })
     * @Type("array<OpenAPI\Server\Model\Coords>")
     */
    protected $coords;

    /**
     * @var string|null
     * @SerializedName("direction")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $direction;

    /**
     * @var string|null
     * @SerializedName("road")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $road;

    /**
     * @var string|null
     * @SerializedName("turn")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $turn;

    /**
     * @var string|null
     * @SerializedName("line")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $line;

    /**
     * @var string|null
     * @SerializedName("departure_station")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $departureStation;

    /**
     * @var string|null
     * @SerializedName("arrival_station")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $arrivalStation;

    /**
     * @var string|null
     * @SerializedName("departs_at")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $departsAt;

    /**
     * @var string|null
     * @SerializedName("arrives_at")
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $arrivesAt;

    /**
     * @var int|null
     * @SerializedName("num_stops")
     * @Assert\Type("int")
     * @Type("int")
     */
    protected $numStops;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->id = isset($data['id']) ? $data['id'] : null;
        $this->type = isset($data['type']) ? $data['type'] : null;
        $this->mode = isset($data['mode']) ? $data['mode'] : null;
        $this->directions = isset($data['directions']) ? $data['directions'] : null;
        $this->distance = isset($data['distance']) ? $data['distance'] : null;
        $this->travelTime = isset($data['travelTime']) ? $data['travelTime'] : null;
        $this->coords = isset($data['coords']) ? $data['coords'] : null;
        $this->direction = isset($data['direction']) ? $data['direction'] : null;
        $this->road = isset($data['road']) ? $data['road'] : null;
        $this->turn = isset($data['turn']) ? $data['turn'] : null;
        $this->line = isset($data['line']) ? $data['line'] : null;
        $this->departureStation = isset($data['departureStation']) ? $data['departureStation'] : null;
        $this->arrivalStation = isset($data['arrivalStation']) ? $data['arrivalStation'] : null;
        $this->departsAt = isset($data['departsAt']) ? $data['departsAt'] : null;
        $this->arrivesAt = isset($data['arrivesAt']) ? $data['arrivesAt'] : null;
        $this->numStops = isset($data['numStops']) ? $data['numStops'] : null;
    }

    /**
     * Gets id.
     *
     * @return string
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Sets id.
     *
     * @param string $id
     *
     * @return $this
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Gets type.
     *
     * @return string
     */
    public function getType()
    {
        return $this->type;
    }

    /**
     * Sets type.
     *
     * @param string $type
     *
     * @return $this
     */
    public function setType($type)
    {
        $this->type = $type;

        return $this;
    }

    /**
     * Gets mode.
     *
     * @return OpenAPI\Server\Model\ResponseTransportationMode
     */
    public function getMode(): ResponseTransportationMode
    {
        return $this->mode;
    }

    /**
     * Sets mode.
     *
     * @param OpenAPI\Server\Model\ResponseTransportationMode $mode
     *
     * @return $this
     */
    public function setMode(ResponseTransportationMode $mode)
    {
        $this->mode = $mode;

        return $this;
    }

    /**
     * Gets directions.
     *
     * @return string
     */
    public function getDirections()
    {
        return $this->directions;
    }

    /**
     * Sets directions.
     *
     * @param string $directions
     *
     * @return $this
     */
    public function setDirections($directions)
    {
        $this->directions = $directions;

        return $this;
    }

    /**
     * Gets distance.
     *
     * @return int
     */
    public function getDistance()
    {
        return $this->distance;
    }

    /**
     * Sets distance.
     *
     * @param int $distance
     *
     * @return $this
     */
    public function setDistance($distance)
    {
        $this->distance = $distance;

        return $this;
    }

    /**
     * Gets travelTime.
     *
     * @return int
     */
    public function getTravelTime()
    {
        return $this->travelTime;
    }

    /**
     * Sets travelTime.
     *
     * @param int $travelTime
     *
     * @return $this
     */
    public function setTravelTime($travelTime)
    {
        $this->travelTime = $travelTime;

        return $this;
    }

    /**
     * Gets coords.
     *
     * @return OpenAPI\Server\Model\Coords[]
     */
    public function getCoords(): array
    {
        return $this->coords;
    }

    /**
     * Sets coords.
     *
     * @param OpenAPI\Server\Model\Coords[] $coords
     *
     * @return $this
     */
    public function setCoords(array $coords)
    {
        $this->coords = $coords;

        return $this;
    }

    /**
     * Gets direction.
     *
     * @return string|null
     */
    public function getDirection()
    {
        return $this->direction;
    }

    /**
     * Sets direction.
     *
     * @param string|null $direction
     *
     * @return $this
     */
    public function setDirection($direction = null)
    {
        $this->direction = $direction;

        return $this;
    }

    /**
     * Gets road.
     *
     * @return string|null
     */
    public function getRoad()
    {
        return $this->road;
    }

    /**
     * Sets road.
     *
     * @param string|null $road
     *
     * @return $this
     */
    public function setRoad($road = null)
    {
        $this->road = $road;

        return $this;
    }

    /**
     * Gets turn.
     *
     * @return string|null
     */
    public function getTurn()
    {
        return $this->turn;
    }

    /**
     * Sets turn.
     *
     * @param string|null $turn
     *
     * @return $this
     */
    public function setTurn($turn = null)
    {
        $this->turn = $turn;

        return $this;
    }

    /**
     * Gets line.
     *
     * @return string|null
     */
    public function getLine()
    {
        return $this->line;
    }

    /**
     * Sets line.
     *
     * @param string|null $line
     *
     * @return $this
     */
    public function setLine($line = null)
    {
        $this->line = $line;

        return $this;
    }

    /**
     * Gets departureStation.
     *
     * @return string|null
     */
    public function getDepartureStation()
    {
        return $this->departureStation;
    }

    /**
     * Sets departureStation.
     *
     * @param string|null $departureStation
     *
     * @return $this
     */
    public function setDepartureStation($departureStation = null)
    {
        $this->departureStation = $departureStation;

        return $this;
    }

    /**
     * Gets arrivalStation.
     *
     * @return string|null
     */
    public function getArrivalStation()
    {
        return $this->arrivalStation;
    }

    /**
     * Sets arrivalStation.
     *
     * @param string|null $arrivalStation
     *
     * @return $this
     */
    public function setArrivalStation($arrivalStation = null)
    {
        $this->arrivalStation = $arrivalStation;

        return $this;
    }

    /**
     * Gets departsAt.
     *
     * @return string|null
     */
    public function getDepartsAt()
    {
        return $this->departsAt;
    }

    /**
     * Sets departsAt.
     *
     * @param string|null $departsAt
     *
     * @return $this
     */
    public function setDepartsAt($departsAt = null)
    {
        $this->departsAt = $departsAt;

        return $this;
    }

    /**
     * Gets arrivesAt.
     *
     * @return string|null
     */
    public function getArrivesAt()
    {
        return $this->arrivesAt;
    }

    /**
     * Sets arrivesAt.
     *
     * @param string|null $arrivesAt
     *
     * @return $this
     */
    public function setArrivesAt($arrivesAt = null)
    {
        $this->arrivesAt = $arrivesAt;

        return $this;
    }

    /**
     * Gets numStops.
     *
     * @return int|null
     */
    public function getNumStops()
    {
        return $this->numStops;
    }

    /**
     * Sets numStops.
     *
     * @param int|null $numStops
     *
     * @return $this
     */
    public function setNumStops($numStops = null)
    {
        $this->numStops = $numStops;

        return $this;
    }
}


