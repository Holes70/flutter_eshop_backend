<?php

use Components\TableLarge;
use Components\Row;

$orders = new TableLarge("orders");
$orders->conditions([
  "order_by" => "id desc"
]);
$pridat = new Row("orders");

$dia->template("
  {$pridat->show()}
  {$orders->show()}
")->render();
