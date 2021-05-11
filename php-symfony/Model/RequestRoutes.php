<?php
/**
 * RequestRoutes
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
 * The version of the OpenAPI document: 1.2.2
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
 * Class representing the RequestRoutes model.
 *
 * @package OpenAPI\Server\Model
 * @author  OpenAPI Generator team
 */
class RequestRoutes 
{
        /**
     * @var OpenAPI\Server\Model\RequestLocation[]
     * @SerializedName("locations")
     * @Assert\NotNull()
     * @Assert\Valid()
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\RequestLocation")
     * })
     * @Type("array<OpenAPI\Server\Model\RequestLocation>")
     * @Assert\Count(
     *   min = 1
     * )
     */
    protected $locations;

    /**
     * @var OpenAPI\Server\Model\RequestRoutesDepartureSearch[]|null
     * @SerializedName("departure_searches")
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\RequestRoutesDepartureSearch")
     * })
     * @Type("array<OpenAPI\Server\Model\RequestRoutesDepartureSearch>")
     * @Assert\Count(
     *   max = 10
     * )
     */
    protected $departureSearches;

    /**
     * @var OpenAPI\Server\Model\RequestRoutesArrivalSearch[]|null
     * @SerializedName("arrival_searches")
     * @Assert\All({
     *   @Assert\Type("OpenAPI\Server\Model\RequestRoutesArrivalSearch")
     * })
     * @Type("array<OpenAPI\Server\Model\RequestRoutesArrivalSearch>")
     * @Assert\Count(
     *   max = 10
     * )
     */
    protected $arrivalSearches;

    /**
     * Constructor
     * @param mixed[] $data Associated array of property values initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->locations = isset($data['locations']) ? $data['locations'] : null;
        $this->departureSearches = isset($data['departureSearches']) ? $data['departureSearches'] : null;
        $this->arrivalSearches = isset($data['arrivalSearches']) ? $data['arrivalSearches'] : null;
    }

    /**
     * Gets locations.
     *
     * @return OpenAPI\Server\Model\RequestLocation[]
     */
    public function getLocations(): array
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

    /**
     * Gets departureSearches.
     *
     * @return OpenAPI\Server\Model\RequestRoutesDepartureSearch[]|null
     */
    public function getDepartureSearches(): ?array
    {
        return $this->departureSearches;
    }

    /**
     * Sets departureSearches.
     *
     * @param OpenAPI\Server\Model\RequestRoutesDepartureSearch[]|null $departureSearches
     *
     * @return $this
     */
    public function setDepartureSearches(array $departureSearches = null)
    {
        $this->departureSearches = $departureSearches;

        return $this;
    }

    /**
     * Gets arrivalSearches.
     *
     * @return OpenAPI\Server\Model\RequestRoutesArrivalSearch[]|null
     */
    public function getArrivalSearches(): ?array
    {
        return $this->arrivalSearches;
    }

    /**
     * Sets arrivalSearches.
     *
     * @param OpenAPI\Server\Model\RequestRoutesArrivalSearch[]|null $arrivalSearches
     *
     * @return $this
     */
    public function setArrivalSearches(array $arrivalSearches = null)
    {
        $this->arrivalSearches = $arrivalSearches;

        return $this;
    }
}


