<?php
/**
 * ResponseTimeFilterResult
 */
namespace app\Models;

/**
 * ResponseTimeFilterResult
 */
class ResponseTimeFilterResult {

    /** @var string $searchId */
    private $searchId;

    /** @var \app\Models\ResponseTimeFilterLocation[] $locations */
    private $locations;

    /** @var string[] $unreachable */
    private $unreachable;

}
