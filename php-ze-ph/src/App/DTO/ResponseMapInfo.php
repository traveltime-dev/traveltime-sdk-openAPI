<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ResponseMapInfo
{
    /**
     * @DTA\Data(field="maps")
     * TODO check validator and strategy are correct and can handle container item type
     * @DTA\Strategy(name="ObjectArray", options={"type":\App\DTO\ResponseMapInfoMap::class})
     * @DTA\Validator(name="Collection", options={"validators":{
     *     {"name":"Dictionary", "options":{"type":\App\DTO\ResponseMapInfoMap::class}}
     * }})
     * @var \App\DTO\ResponseMapInfoMap[]
     */
    public $maps;
}
