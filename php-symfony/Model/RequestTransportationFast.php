<?php
/**
 * RequestTransportationFast
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
 * Class representing the RequestTransportationFast model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class RequestTransportationFast 
{
        /**
     * @var string
     * @SerializedName("type")
     * @Assert\NotNull()
     * @Assert\Choice({ "public_transport", "driving", "driving+public_transport" })
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $type;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->type = isset($data['type']) ? $data['type'] : null;
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
}


