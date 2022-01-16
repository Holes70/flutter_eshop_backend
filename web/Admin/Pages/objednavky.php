<?php

use Components\TableLarge;
use Components\Row;

$orders = new TableLarge("orders");
$pridat = new Row("orders");

$dia->template("
  {$pridat->show()}
  {$orders->show()}
")->render();
