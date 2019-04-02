<?php
/**
 * ResponseTimeMapBoundingBoxesResult
 */
namespace app\Models;

/**
 * ResponseTimeMapBoundingBoxesResult
 */
class ResponseTimeMapBoundingBoxesResult {

    /** @var string $searchId */
    private $searchId;

    /** @var \app\Models\ResponseBoundingBox[] $boundingBoxes */
    private $boundingBoxes;

    /** @var \app\Models\ResponseTimeMapProperties $properties */
    private $properties;

}
