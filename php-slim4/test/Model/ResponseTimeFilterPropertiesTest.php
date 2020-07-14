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
 * The version of the OpenAPI document: 1.2.1
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
use OpenAPIServer\Model\ResponseTimeFilterProperties;

/**
 * ResponseTimeFilterPropertiesTest Class Doc Comment
 *
 * @package OpenAPIServer\Model
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 *
 * @coversDefaultClass \OpenAPIServer\Model\ResponseTimeFilterProperties
 */
class ResponseTimeFilterPropertiesTest extends TestCase
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
     * Test "ResponseTimeFilterProperties"
     */
    public function testResponseTimeFilterProperties()
    {
        $testResponseTimeFilterProperties = new ResponseTimeFilterProperties();
        $namespacedClassname = ResponseTimeFilterProperties::getModelsNamespace() . '\\ResponseTimeFilterProperties';
        $this->assertSame('\\' . ResponseTimeFilterProperties::class, $namespacedClassname);
        $this->assertTrue(
            class_exists($namespacedClassname),
            sprintf('Assertion failed that "%s" class exists', $namespacedClassname)
        );
        $this->markTestIncomplete(
            'Test of "ResponseTimeFilterProperties" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "travelTime"
     */
    public function testPropertyTravelTime()
    {
        $this->markTestIncomplete(
            'Test of "travelTime" property in "ResponseTimeFilterProperties" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "distance"
     */
    public function testPropertyDistance()
    {
        $this->markTestIncomplete(
            'Test of "distance" property in "ResponseTimeFilterProperties" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "distanceBreakdown"
     */
    public function testPropertyDistanceBreakdown()
    {
        $this->markTestIncomplete(
            'Test of "distanceBreakdown" property in "ResponseTimeFilterProperties" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "fares"
     */
    public function testPropertyFares()
    {
        $this->markTestIncomplete(
            'Test of "fares" property in "ResponseTimeFilterProperties" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "route"
     */
    public function testPropertyRoute()
    {
        $this->markTestIncomplete(
            'Test of "route" property in "ResponseTimeFilterProperties" model has not been implemented yet.'
        );
    }

    /**
     * Test getOpenApiSchema static method
     * @covers ::getOpenApiSchema
     */
    public function testGetOpenApiSchema()
    {
        $schemaArr = ResponseTimeFilterProperties::getOpenApiSchema();
        $this->assertIsArray($schemaArr);
    }
}