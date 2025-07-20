<?php
require __DIR__ . '/../../vendor/autoload.php';

use Pionia\Realm\AppRealm;


$application = AppRealm::create(__DIR__);


return $application;
