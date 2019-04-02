<?php
/**
 * ResponseError
 */
namespace app\Models;

/**
 * ResponseError
 */
class ResponseError {

    /** @var int $httpStatus */
    private $httpStatus;

    /** @var int $errorCode */
    private $errorCode;

    /** @var string $description */
    private $description;

    /** @var string $documentationLink */
    private $documentationLink;

    /** @var map[string,string[]] $additionalInfo */
    private $additionalInfo;

}
