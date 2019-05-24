<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class RequestLocation
{
    /**
     * @DTA\Data(field="id")
     * @DTA\Validator(name="Type", options={"type":"string"})
     * @var string
     */
    public $id;
    /**
     * @DTA\Data(field="coords")
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Coords::class})
     * @DTA\Validator(name="Dictionary", options={"type":\App\DTO\Coords::class})
     * @var \App\DTO\Coords
     */
    public $coords;
}
