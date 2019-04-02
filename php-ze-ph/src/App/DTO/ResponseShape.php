<?php

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseShape
{
    /**
     * @DTA\Data(field="shell")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\Coords::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\Coords::class}}
     * }})
     * @var \App\DTO\Coords[]
     */
    public $shell;
    /**
     * @DTA\Data(field="holes")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\Coords[]::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\Coords[]::class}}
     * }})
     * @var \App\DTO\Coords[][]
     */
    public $holes;
}
