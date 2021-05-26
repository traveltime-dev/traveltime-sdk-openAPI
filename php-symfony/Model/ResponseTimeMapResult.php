<?php
/**
 * ResponseTimeMapResult
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
 * Class representing the ResponseTimeMapResult model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class ResponseTimeMapResult 
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
     * @var OpenAPI\Server\Model\ResponseShape[]
     * @SerializedName("shapes")
     * @Assert\NotNull()
     * @Assert\Valid()
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\ResponseShape")
     * })
     * @Type("array<OpenAPI\Server\Model\ResponseShape>")
     */
    protected $shapes;

    /**
     * @var OpenAPI\Server\Model\ResponseTimeMapProperties
     * @SerializedName("properties")
     * @Assert\NotNull()
     * @Assert\Valid()
     * @Assert\Type("OpenAPI\Server\Model\ResponseTimeMapProperties")
     * @Type("OpenAPI\Server\Model\ResponseTimeMapProperties")
     */
    protected $properties;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->searchId = isset($data['searchId']) ? $data['searchId'] : null;
        $this->shapes = isset($data['shapes']) ? $data['shapes'] : null;
        $this->properties = isset($data['properties']) ? $data['properties'] : null;
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
     * Gets shapes.
     *
     * @return OpenAPI\Server\Model\ResponseShape[]
     */
    public function getShapes(): array
    {
        return $this->shapes;
    }

    /**
     * Sets shapes.
     *
     * @param OpenAPI\Server\Model\ResponseShape[] $shapes
     *
     * @return $this
     */
    public function setShapes(array $shapes)
    {
        $this->shapes = $shapes;

        return $this;
    }

    /**
     * Gets properties.
     *
     * @return OpenAPI\Server\Model\ResponseTimeMapProperties
     */
    public function getProperties(): ResponseTimeMapProperties
    {
        return $this->properties;
    }

    /**
     * Sets properties.
     *
     * @param OpenAPI\Server\Model\ResponseTimeMapProperties $properties
     *
     * @return $this
     */
    public function setProperties(ResponseTimeMapProperties $properties)
    {
        $this->properties = $properties;

        return $this;
    }
}


