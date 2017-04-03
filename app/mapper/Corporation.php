<?php
/**
 * Created by PhpStorm.
 * User: Exodus4D
 * Date: 31.03.2017
 * Time: 23:00
 */

namespace Exodus4D\ESI\Mapper;

use data\mapper;

class Corporation extends mapper\AbstractIterator {

    protected static $map = [
        'corporation_name' => 'name'
    ];
}