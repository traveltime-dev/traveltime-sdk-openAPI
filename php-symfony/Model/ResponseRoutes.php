<?php
/**
 * ResponseRoutes
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
 * Class representing the ResponseRoutes model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class ResponseRoutes 
{
        /**
     * @var OpenAPI\Server\Model\ResponseRoutesResult[]
     * @SerializedName("results")
     * @Assert\NotNull()
     * @Assert\Valid()
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\ResponseRoutesResult")
     * })
     * @Type("array<OpenAPI\Server\Model\ResponseRoutesResult>")
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
     * @return OpenAPI\Server\Model\ResponseRoutesResult[]
     */
    public function getResults(): array
    {
        return $this->results;
    }

    /**
     * Sets results.
     *
     * @param OpenAPI\Server\Model\ResponseRoutesResult[] $results
     *
     * @return $this
     */
    public function setResults(array $results)
    {
        $this->results = $results;

        return $this;
    }
}


