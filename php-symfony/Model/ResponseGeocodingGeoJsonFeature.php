<?php
/**
 * ResponseGeocodingGeoJsonFeature
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
 * Class representing the ResponseGeocodingGeoJsonFeature model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class ResponseGeocodingGeoJsonFeature 
{
        /**
     * @var string
     * @SerializedName("type")
     * @Assert\NotNull()
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $type;

    /**
     * @var OpenAPI\Server\Model\ResponseGeocodingGeometry
     * @SerializedName("geometry")
     * @Assert\NotNull()
     * @Assert\Valid()
     * @Assert\Type("OpenAPI\Server\Model\ResponseGeocodingGeometry")
     * @Type("OpenAPI\Server\Model\ResponseGeocodingGeometry")
     */
    protected $geometry;

    /**
     * @var OpenAPI\Server\Model\ResponseGeocodingProperties
     * @SerializedName("properties")
     * @Assert\NotNull()
     * @Assert\Valid()
     * @Assert\Type("OpenAPI\Server\Model\ResponseGeocodingProperties")
     * @Type("OpenAPI\Server\Model\ResponseGeocodingProperties")
     */
    protected $properties;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->type = isset($data['type']) ? $data['type'] : null;
        $this->geometry = isset($data['geometry']) ? $data['geometry'] : null;
        $this->properties = isset($data['properties']) ? $data['properties'] : null;
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
     * Gets geometry.
     *
     * @return OpenAPI\Server\Model\ResponseGeocodingGeometry
     */
    public function getGeometry(): ResponseGeocodingGeometry
    {
        return $this->geometry;
    }

    /**
     * Sets geometry.
     *
     * @param OpenAPI\Server\Model\ResponseGeocodingGeometry $geometry
     *
     * @return $this
     */
    public function setGeometry(ResponseGeocodingGeometry $geometry)
    {
        $this->geometry = $geometry;

        return $this;
    }

    /**
     * Gets properties.
     *
     * @return OpenAPI\Server\Model\ResponseGeocodingProperties
     */
    public function getProperties(): ResponseGeocodingProperties
    {
        return $this->properties;
    }

    /**
     * Sets properties.
     *
     * @param OpenAPI\Server\Model\ResponseGeocodingProperties $properties
     *
     * @return $this
     */
    public function setProperties(ResponseGeocodingProperties $properties)
    {
        $this->properties = $properties;

        return $this;
    }
}


