<?php
/**
 * RequestSupportedLocations
 *
 * PHP version 5
 *
 * @category Class
 * @package  OpenAPI\Server\Model
 * @author   OpenAPI Generator team
 * @link     https://github.com/openapitools/openapi-generator
 */

/**
 * TravelTime Platform API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
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
 * Class representing the RequestSupportedLocations model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class RequestSupportedLocations 
{
        /**
     * @var OpenAPI\Server\Model\RequestLocation[]
     * @SerializedName("locations")
     * @Assert\NotNull()
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\RequestLocation")
     * })
     * @Type("array<OpenAPI\Server\Model\RequestLocation>")
     */
    protected $locations;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->locations = isset($data['locations']) ? $data['locations'] : null;
    }

    /**
     * Gets locations.
     *
     * @return OpenAPI\Server\Model\RequestLocation[]
     */
    public function getLocations()
    {
        return $this->locations;
    }

    /**
     * Sets locations.
     *
     * @param OpenAPI\Server\Model\RequestLocation[] $locations
     *
     * @return $this
     */
    public function setLocations(array $locations)
    {
        $this->locations = $locations;

        return $this;
    }
}

