<?php

/**
 * TravelTime API
 * PHP version 7.2
 *
 * @package OpenAPIServer
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 */

/**
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 * Please update the test case below to test the model.
 */
namespace OpenAPIServer\Model;

use PHPUnit\Framework\TestCase;
use OpenAPIServer\Model\ResponseRoutePart;

/**
 * ResponseRoutePartTest Class Doc Comment
 *
 * @package OpenAPIServer\Model
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 *
 * @coversDefaultClass \OpenAPIServer\Model\ResponseRoutePart
 */
class ResponseRoutePartTest extends TestCase
{

    /**
     * Setup before running any test cases
     */
    public static function setUpBeforeClass(): void
    {
    }

    /**
     * Setup before running each test case
     */
    public function setUp(): void
    {
    }

    /**
     * Clean up after running each test case
     */
    public function tearDown(): void
    {
    }

    /**
     * Clean up after running all test cases
     */
    public static function tearDownAfterClass(): void
    {
    }

    /**
     * Test "ResponseRoutePart"
     */
    public function testResponseRoutePart()
    {
        $testResponseRoutePart = new ResponseRoutePart();
        $namespacedClassname = ResponseRoutePart::getModelsNamespace() . '\\ResponseRoutePart';
        $this->assertSame('\\' . ResponseRoutePart::class, $namespacedClassname);
        $this->assertTrue(
            class_exists($namespacedClassname),
            sprintf('Assertion failed that "%s" class exists', $namespacedClassname)
        );
        $this->markTestIncomplete(
            'Test of "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "id"
     */
    public function testPropertyId()
    {
        $this->markTestIncomplete(
            'Test of "id" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "type"
     */
    public function testPropertyType()
    {
        $this->markTestIncomplete(
            'Test of "type" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "mode"
     */
    public function testPropertyMode()
    {
        $this->markTestIncomplete(
            'Test of "mode" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "directions"
     */
    public function testPropertyDirections()
    {
        $this->markTestIncomplete(
            'Test of "directions" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "distance"
     */
    public function testPropertyDistance()
    {
        $this->markTestIncomplete(
            'Test of "distance" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "travelTime"
     */
    public function testPropertyTravelTime()
    {
        $this->markTestIncomplete(
            'Test of "travelTime" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "coords"
     */
    public function testPropertyCoords()
    {
        $this->markTestIncomplete(
            'Test of "coords" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "direction"
     */
    public function testPropertyDirection()
    {
        $this->markTestIncomplete(
            'Test of "direction" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "road"
     */
    public function testPropertyRoad()
    {
        $this->markTestIncomplete(
            'Test of "road" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "turn"
     */
    public function testPropertyTurn()
    {
        $this->markTestIncomplete(
            'Test of "turn" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "line"
     */
    public function testPropertyLine()
    {
        $this->markTestIncomplete(
            'Test of "line" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "departureStation"
     */
    public function testPropertyDepartureStation()
    {
        $this->markTestIncomplete(
            'Test of "departureStation" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "arrivalStation"
     */
    public function testPropertyArrivalStation()
    {
        $this->markTestIncomplete(
            'Test of "arrivalStation" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "departsAt"
     */
    public function testPropertyDepartsAt()
    {
        $this->markTestIncomplete(
            'Test of "departsAt" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "arrivesAt"
     */
    public function testPropertyArrivesAt()
    {
        $this->markTestIncomplete(
            'Test of "arrivesAt" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "numStops"
     */
    public function testPropertyNumStops()
    {
        $this->markTestIncomplete(
            'Test of "numStops" property in "ResponseRoutePart" model has not been implemented yet.'
        );
    }

    /**
     * Test getOpenApiSchema static method
     * @covers ::getOpenApiSchema
     */
    public function testGetOpenApiSchema()
    {
        $schemaArr = ResponseRoutePart::getOpenApiSchema();
        $this->assertIsArray($schemaArr);
    }
}
