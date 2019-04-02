<?php
/**
 * ResponseRoutesResult
 */
namespace app\Models;

/**
 * ResponseRoutesResult
 */
class ResponseRoutesResult {

    /** @var string $searchId */
    private $searchId;

    /** @var \app\Models\ResponseRoutesLocation[] $locations */
    private $locations;

    /** @var string[] $unreachable */
    private $unreachable;

}
