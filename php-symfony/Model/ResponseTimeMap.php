<?php
/**
 * ResponseTimeMap
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
 * Class representing the ResponseTimeMap model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class ResponseTimeMap 
{
        /**
     * @var OpenAPI\Server\Model\ResponseTimeMapResult[]
     * @SerializedName("results")
     * @Assert\NotNull()
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\ResponseTimeMapResult")
     * })
     * @Type("array<OpenAPI\Server\Model\ResponseTimeMapResult>")
     */
    protected $results;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->results = isset($data['results']) ? $data['results'] : null;
    }

    /**
     * Gets results.
     *
     * @return OpenAPI\Server\Model\ResponseTimeMapResult[]
     */
    public function getResults()
    {
        return $this->results;
    }

    /**
     * Sets results.
     *
     * @param OpenAPI\Server\Model\ResponseTimeMapResult[] $results
     *
     * @return $this
     */
    public function setResults(array $results)
    {
        $this->results = $results;

        return $this;
    }
}

