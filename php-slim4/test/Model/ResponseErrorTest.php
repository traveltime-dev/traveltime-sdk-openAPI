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
 * The version of the OpenAPI document: 1.2.2
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
use OpenAPIServer\Model\ResponseError;

/**
 * ResponseErrorTest Class Doc Comment
 *
 * @package OpenAPIServer\Model
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 *
 * @coversDefaultClass \OpenAPIServer\Model\ResponseError
 */
class ResponseErrorTest extends TestCase
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
     * Test "ResponseError"
     */
    public function testResponseError()
    {
        $testResponseError = new ResponseError();
        $namespacedClassname = ResponseError::getModelsNamespace() . '\\ResponseError';
        $this->assertSame('\\' . ResponseError::class, $namespacedClassname);
        $this->assertTrue(
            class_exists($namespacedClassname),
            sprintf('Assertion failed that "%s" class exists', $namespacedClassname)
        );
        $this->markTestIncomplete(
            'Test of "ResponseError" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "httpStatus"
     */
    public function testPropertyHttpStatus()
    {
        $this->markTestIncomplete(
            'Test of "httpStatus" property in "ResponseError" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "errorCode"
     */
    public function testPropertyErrorCode()
    {
        $this->markTestIncomplete(
            'Test of "errorCode" property in "ResponseError" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "description"
     */
    public function testPropertyDescription()
    {
        $this->markTestIncomplete(
            'Test of "description" property in "ResponseError" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "documentationLink"
     */
    public function testPropertyDocumentationLink()
    {
        $this->markTestIncomplete(
            'Test of "documentationLink" property in "ResponseError" model has not been implemented yet.'
        );
    }

    /**
     * Test attribute "additionalInfo"
     */
    public function testPropertyAdditionalInfo()
    {
        $this->markTestIncomplete(
            'Test of "additionalInfo" property in "ResponseError" model has not been implemented yet.'
        );
    }

    /**
     * Test getOpenApiSchema static method
     * @covers ::getOpenApiSchema
     */
    public function testGetOpenApiSchema()
    {
        $schemaArr = ResponseError::getOpenApiSchema();
        $this->assertIsArray($schemaArr);
    }
}
