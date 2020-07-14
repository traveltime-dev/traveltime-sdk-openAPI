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
use OpenAPIServer\Model\ResponseTimeFilterPostcode;

/**
 * ResponseTimeFilterPostcodeTest Class Doc Comment
 *
 * @package OpenAPIServer\Model
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 *
 * @coversDefaultClass \OpenAPIServer\Model\ResponseTimeFilterPostcode
 */
class ResponseTimeFilterPostcodeTest extends TestCase
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
     * Test "ResponseTimeFilterPostcode"
     */
    public function testResponseTimeFilterPostcode()
    {
        $testResponseTimeFilterPostcode = new ResponseTimeFilterPostcode();
        $namespacedClassname = ResponseTimeFilterPostcode::getModelsNamespace() . '\\ResponseTimeFilterPostcode';
        $this->assertSame('\\' . ResponseTimeFilterPostcode::class, $namespacedClassname);
        $this->assertTrue(
            class_exists($namespacedClassname),
            sprintf('Assertion failed that "%s" class exists', $namespacedClassname)
        );
        $this->markTestIncomplete(
            'Test of "ResponseTimeFilterPostcode" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "code"
     */
    public function testPropertyCode()
    {
        $this->markTestIncomplete(
            'Test of "code" property in "ResponseTimeFilterPostcode" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "properties"
     */
    public function testPropertyProperties()
    {
        $this->markTestIncomplete(
            'Test of "properties" property in "ResponseTimeFilterPostcode" model has not been implemented yet.'
        );
    }

    /**
     * Test getOpenApiSchema static method
     * @covers ::getOpenApiSchema
     */
    public function testGetOpenApiSchema()
    {
        $schemaArr = ResponseTimeFilterPostcode::getOpenApiSchema();
        $this->assertIsArray($schemaArr);
    }
}