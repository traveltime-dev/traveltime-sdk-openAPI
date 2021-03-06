<?php
/**
 * RequestLevelOfDetail
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
 * Class representing the RequestLevelOfDetail model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class RequestLevelOfDetail 
{
        /**
     * @var string
     * @SerializedName("scale_type")
     * @Assert\NotNull()
     * @Assert\Choice({ "simple" })
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $scaleType;

    /**
     * @var string
     * @SerializedName("level")
     * @Assert\NotNull()
     * @Assert\Choice({ "lowest", "low", "medium", "high", "highest" })
     * @Assert\Type("string")
     * @Type("string")
     */
    protected $level;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->scaleType = isset($data['scaleType']) ? $data['scaleType'] : null;
        $this->level = isset($data['level']) ? $data['level'] : null;
    }

    /**
     * Gets scaleType.
     *
     * @return string
     */
    public function getScaleType()
    {
        return $this->scaleType;
    }

    /**
     * Sets scaleType.
     *
     * @param string $scaleType
     *
     * @return $this
     */
    public function setScaleType($scaleType)
    {
        $this->scaleType = $scaleType;

        return $this;
    }

    /**
     * Gets level.
     *
     * @return string
     */
    public function getLevel()
    {
        return $this->level;
    }

    /**
     * Sets level.
     *
     * @param string $level
     *
     * @return $this
     */
    public function setLevel($level)
    {
        $this->level = $level;

        return $this;
    }
}


