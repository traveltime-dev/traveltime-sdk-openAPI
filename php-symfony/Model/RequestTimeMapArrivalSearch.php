<?php
/**
 * RequestTimeMapArrivalSearch
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
 * Class representing the RequestTimeMapArrivalSearch model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class RequestTimeMapArrivalSearch 
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
     * @var OpenAPI\Server\Model\Coords
     * @SerializedName("coords")
     * @Assert\NotNull()
     * @Assert\Valid()
     * @Assert\Type("OpenAPI\Server\Model\Coords")
     * @Type("OpenAPI\Server\Model\Coords")
     */
    protected $coords;

    /**
     * @var OpenAPI\Server\Model\RequestTransportation
     * @SerializedName("transportation")
     * @Assert\NotNull()
     * @Assert\Valid()
     * @Assert\Type("OpenAPI\Server\Model\RequestTransportation")
     * @Type("OpenAPI\Server\Model\RequestTransportation")
     */
    protected $transportation;

    /**
     * @var int
     * @SerializedName("travel_time")
     * @Assert\NotNull()
     * @Assert\Type("int")
     * @Type("int")
     * @Assert\GreaterThanOrEqual(60)
     * @Assert\LessThanOrEqual(60)
     */
    protected $travelTime;

    /**
     * @var \DateTime
     * @SerializedName("arrival_time")
     * @Assert\NotNull()
     * @Assert\Valid()
     * @Assert\DateTime()
     * @Type("DateTime")
     */
    protected $arrivalTime;

    /**
     * @var OpenAPI\Server\Model\RequestTimeMapProperty[]|null
     * @SerializedName("properties")
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\RequestTimeMapProperty")
     * })
     * @Type("array<OpenAPI\Server\Model\RequestTimeMapProperty>")
     */
    protected $properties;

    /**
     * @var OpenAPI\Server\Model\RequestRangeNoMaxResults|null
     * @SerializedName("range")
     * @Assert\Type("OpenAPI\Server\Model\RequestRangeNoMaxResults")
     * @Type("OpenAPI\Server\Model\RequestRangeNoMaxResults")
     */
    protected $range;

    /**
     * @var OpenAPI\Server\Model\RequestLevelOfDetail|null
     * @SerializedName("level_of_detail")
     * @Assert\Type("OpenAPI\Server\Model\RequestLevelOfDetail")
     * @Type("OpenAPI\Server\Model\RequestLevelOfDetail")
     */
    protected $levelOfDetail;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->id = isset($data['id']) ? $data['id'] : null;
        $this->coords = isset($data['coords']) ? $data['coords'] : null;
        $this->transportation = isset($data['transportation']) ? $data['transportation'] : null;
        $this->travelTime = isset($data['travelTime']) ? $data['travelTime'] : null;
        $this->arrivalTime = isset($data['arrivalTime']) ? $data['arrivalTime'] : null;
        $this->properties = isset($data['properties']) ? $data['properties'] : null;
        $this->range = isset($data['range']) ? $data['range'] : null;
        $this->levelOfDetail = isset($data['levelOfDetail']) ? $data['levelOfDetail'] : null;
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
     * Gets coords.
     *
     * @return OpenAPI\Server\Model\Coords
     */
    public function getCoords(): Coords
    {
        return $this->coords;
    }

    /**
     * Sets coords.
     *
     * @param OpenAPI\Server\Model\Coords $coords
     *
     * @return $this
     */
    public function setCoords(Coords $coords)
    {
        $this->coords = $coords;

        return $this;
    }

    /**
     * Gets transportation.
     *
     * @return OpenAPI\Server\Model\RequestTransportation
     */
    public function getTransportation(): RequestTransportation
    {
        return $this->transportation;
    }

    /**
     * Sets transportation.
     *
     * @param OpenAPI\Server\Model\RequestTransportation $transportation
     *
     * @return $this
     */
    public function setTransportation(RequestTransportation $transportation)
    {
        $this->transportation = $transportation;

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
     * Gets arrivalTime.
     *
     * @return \DateTime
     */
    public function getArrivalTime(): \DateTime
    {
        return $this->arrivalTime;
    }

    /**
     * Sets arrivalTime.
     *
     * @param \DateTime $arrivalTime
     *
     * @return $this
     */
    public function setArrivalTime(\DateTime $arrivalTime)
    {
        $this->arrivalTime = $arrivalTime;

        return $this;
    }

    /**
     * Gets properties.
     *
     * @return OpenAPI\Server\Model\RequestTimeMapProperty[]|null
     */
    public function getProperties(): ?array
    {
        return $this->properties;
    }

    /**
     * Sets properties.
     *
     * @param OpenAPI\Server\Model\RequestTimeMapProperty[]|null $properties
     *
     * @return $this
     */
    public function setProperties(array $properties = null)
    {
        $this->properties = $properties;

        return $this;
    }

    /**
     * Gets range.
     *
     * @return OpenAPI\Server\Model\RequestRangeNoMaxResults|null
     */
    public function getRange(): ?RequestRangeNoMaxResults
    {
        return $this->range;
    }

    /**
     * Sets range.
     *
     * @param OpenAPI\Server\Model\RequestRangeNoMaxResults|null $range
     *
     * @return $this
     */
    public function setRange(RequestRangeNoMaxResults $range = null)
    {
        $this->range = $range;

        return $this;
    }

    /**
     * Gets levelOfDetail.
     *
     * @return OpenAPI\Server\Model\RequestLevelOfDetail|null
     */
    public function getLevelOfDetail(): ?RequestLevelOfDetail
    {
        return $this->levelOfDetail;
    }

    /**
     * Sets levelOfDetail.
     *
     * @param OpenAPI\Server\Model\RequestLevelOfDetail|null $levelOfDetail
     *
     * @return $this
     */
    public function setLevelOfDetail(RequestLevelOfDetail $levelOfDetail = null)
    {
        $this->levelOfDetail = $levelOfDetail;

        return $this;
    }
}


