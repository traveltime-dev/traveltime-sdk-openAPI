<?php
/**
 * Coords
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
 * Class representing the Coords model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class Coords 
{
        /**
     * @var double
     * @SerializedName("lat")
     * @Assert\NotNull()
     * @Assert\Type("double")
     * @Type("double")
     */
    protected $lat;

    /**
     * @var double
     * @SerializedName("lng")
     * @Assert\NotNull()
     * @Assert\Type("double")
     * @Type("double")
     */
    protected $lng;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->lat = isset($data['lat']) ? $data['lat'] : null;
        $this->lng = isset($data['lng']) ? $data['lng'] : null;
    }

    /**
     * Gets lat.
     *
     * @return double
     */
    public function getLat()
    {
        return $this->lat;
    }

    /**
     * Sets lat.
     *
     * @param double $lat
     *
     * @return $this
     */
    public function setLat($lat)
    {
        $this->lat = $lat;

        return $this;
    }

    /**
     * Gets lng.
     *
     * @return double
     */
    public function getLng()
    {
        return $this->lng;
    }

    /**
     * Sets lng.
     *
     * @param double $lng
     *
     * @return $this
     */
    public function setLng($lng)
    {
        $this->lng = $lng;

        return $this;
    }
}


