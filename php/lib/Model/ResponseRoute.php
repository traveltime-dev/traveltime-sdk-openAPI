<?php
/**
 * ResponseRoute
 *
 * PHP version 5
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * TravelTime Platform API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 3.3.4
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Model;

use \ArrayAccess;
use \OpenAPI\Client\ObjectSerializer;

/**
 * ResponseRoute Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */
class ResponseRoute implements ModelInterface, ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'ResponseRoute';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'departure_time' => '\DateTime',
        'arrival_time' => '\DateTime',
        'parts' => '\OpenAPI\Client\Model\ResponseRoutePart[]'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPIFormats = [
        'departure_time' => 'date-time',
        'arrival_time' => 'date-time',
        'parts' => null
    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'departure_time' => 'departure_time',
        'arrival_time' => 'arrival_time',
        'parts' => 'parts'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'departure_time' => 'setDepartureTime',
        'arrival_time' => 'setArrivalTime',
        'parts' => 'setParts'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'departure_time' => 'getDepartureTime',
        'arrival_time' => 'getArrivalTime',
        'parts' => 'getParts'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }

    

    

    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['departure_time'] = isset($data['departure_time']) ? $data['departure_time'] : null;
        $this->container['arrival_time'] = isset($data['arrival_time']) ? $data['arrival_time'] : null;
        $this->container['parts'] = isset($data['parts']) ? $data['parts'] : null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['departure_time'] === null) {
            $invalidProperties[] = "'departure_time' can't be null";
        }
        if ($this->container['arrival_time'] === null) {
            $invalidProperties[] = "'arrival_time' can't be null";
        }
        if ($this->container['parts'] === null) {
            $invalidProperties[] = "'parts' can't be null";
        }
        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets departure_time
     *
     * @return \DateTime
     */
    public function getDepartureTime()
    {
        return $this->container['departure_time'];
    }

    /**
     * Sets departure_time
     *
     * @param \DateTime $departure_time departure_time
     *
     * @return $this
     */
    public function setDepartureTime($departure_time)
    {
        $this->container['departure_time'] = $departure_time;

        return $this;
    }

    /**
     * Gets arrival_time
     *
     * @return \DateTime
     */
    public function getArrivalTime()
    {
        return $this->container['arrival_time'];
    }

    /**
     * Sets arrival_time
     *
     * @param \DateTime $arrival_time arrival_time
     *
     * @return $this
     */
    public function setArrivalTime($arrival_time)
    {
        $this->container['arrival_time'] = $arrival_time;

        return $this;
    }

    /**
     * Gets parts
     *
     * @return \OpenAPI\Client\Model\ResponseRoutePart[]
     */
    public function getParts()
    {
        return $this->container['parts'];
    }

    /**
     * Sets parts
     *
     * @param \OpenAPI\Client\Model\ResponseRoutePart[] $parts parts
     *
     * @return $this
     */
    public function setParts($parts)
    {
        $this->container['parts'] = $parts;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed
     */
    public function offsetGet($offset)
    {
        return isset($this->container[$offset]) ? $this->container[$offset] : null;
    }

    /**
     * Sets value based on offset.
     *
     * @param integer $offset Offset
     * @param mixed   $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }
}

