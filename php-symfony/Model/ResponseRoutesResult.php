<?php
/**
 * ResponseRoutesResult
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
 * Class representing the ResponseRoutesResult model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class ResponseRoutesResult 
{
        /**
     * @var string
     * @SerializedName("search_id")
     * @Assert\NotNull()
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $searchId;

    /**
     * @var OpenAPI\Server\Model\ResponseRoutesLocation[]
     * @SerializedName("locations")
     * @Assert\NotNull()
     * @Assert\Valid()
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\ResponseRoutesLocation")
     * })
     * @Type("array<OpenAPI\Server\Model\ResponseRoutesLocation>")
     */
    protected $locations;

    /**
     * @var string[]
     * @SerializedName("unreachable")
     * @Assert\NotNull()
     * @Assert\All({
     *   @Assert\Type("string")
     * })
     * @Type("array<string>")
     */
    protected $unreachable;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->searchId = isset($data['searchId']) ? $data['searchId'] : null;
        $this->locations = isset($data['locations']) ? $data['locations'] : null;
        $this->unreachable = isset($data['unreachable']) ? $data['unreachable'] : null;
    }

    /**
     * Gets searchId.
     *
     * @return string
     */
    public function getSearchId()
    {
        return $this->searchId;
    }

    /**
     * Sets searchId.
     *
     * @param string $searchId
     *
     * @return $this
     */
    public function setSearchId($searchId)
    {
        $this->searchId = $searchId;

        return $this;
    }

    /**
     * Gets locations.
     *
     * @return OpenAPI\Server\Model\ResponseRoutesLocation[]
     */
    public function getLocations(): array
    {
        return $this->locations;
    }

    /**
     * Sets locations.
     *
     * @param OpenAPI\Server\Model\ResponseRoutesLocation[] $locations
     *
     * @return $this
     */
    public function setLocations(array $locations)
    {
        $this->locations = $locations;

        return $this;
    }

    /**
     * Gets unreachable.
     *
     * @return string[]
     */
    public function getUnreachable(): array
    {
        return $this->unreachable;
    }

    /**
     * Sets unreachable.
     *
     * @param string[] $unreachable
     *
     * @return $this
     */
    public function setUnreachable(array $unreachable)
    {
        $this->unreachable = $unreachable;

        return $this;
    }
}


