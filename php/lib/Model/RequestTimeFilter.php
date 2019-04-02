<?php
/**
 * RequestTimeFilter
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
 * RequestTimeFilter Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */
class RequestTimeFilter implements ModelInterface, ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'RequestTimeFilter';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'locations' => '\OpenAPI\Client\Model\RequestLocation[]',
        'departure_searches' => '\OpenAPI\Client\Model\RequestTimeFilterDepartureSearch[]',
        'arrival_searches' => '\OpenAPI\Client\Model\RequestTimeFilterArrivalSearch[]'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPIFormats = [
        'locations' => null,
        'departure_searches' => null,
        'arrival_searches' => null
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
        'locations' => 'locations',
        'departure_searches' => 'departure_searches',
        'arrival_searches' => 'arrival_searches'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'locations' => 'setLocations',
        'departure_searches' => 'setDepartureSearches',
        'arrival_searches' => 'setArrivalSearches'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'locations' => 'getLocations',
        'departure_searches' => 'getDepartureSearches',
        'arrival_searches' => 'getArrivalSearches'
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
        $this->container['locations'] = isset($data['locations']) ? $data['locations'] : null;
        $this->container['departure_searches'] = isset($data['departure_searches']) ? $data['departure_searches'] : null;
        $this->container['arrival_searches'] = isset($data['arrival_searches']) ? $data['arrival_searches'] : null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['locations'] === null) {
            $invalidProperties[] = "'locations' can't be null";
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
     * Gets locations
     *
     * @return \OpenAPI\Client\Model\RequestLocation[]
     */
    public function getLocations()
    {
        return $this->container['locations'];
    }

    /**
     * Sets locations
     *
     * @param \OpenAPI\Client\Model\RequestLocation[] $locations locations
     *
     * @return $this
     */
    public function setLocations($locations)
    {
        $this->container['locations'] = $locations;

        return $this;
    }

    /**
     * Gets departure_searches
     *
     * @return \OpenAPI\Client\Model\RequestTimeFilterDepartureSearch[]|null
     */
    public function getDepartureSearches()
    {
        return $this->container['departure_searches'];
    }

    /**
     * Sets departure_searches
     *
     * @param \OpenAPI\Client\Model\RequestTimeFilterDepartureSearch[]|null $departure_searches departure_searches
     *
     * @return $this
     */
    public function setDepartureSearches($departure_searches)
    {
        $this->container['departure_searches'] = $departure_searches;

        return $this;
    }

    /**
     * Gets arrival_searches
     *
     * @return \OpenAPI\Client\Model\RequestTimeFilterArrivalSearch[]|null
     */
    public function getArrivalSearches()
    {
        return $this->container['arrival_searches'];
    }

    /**
     * Sets arrival_searches
     *
     * @param \OpenAPI\Client\Model\RequestTimeFilterArrivalSearch[]|null $arrival_searches arrival_searches
     *
     * @return $this
     */
    public function setArrivalSearches($arrival_searches)
    {
        $this->container['arrival_searches'] = $arrival_searches;

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

