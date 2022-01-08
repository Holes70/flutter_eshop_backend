<?php

use Components\TableLarge;
use Components\Row;

$produkty = new TableLarge("carts_products");
$pridat = new Row("carts_products");

$dia->template("
  {$pridat->show()}
  {$produkty->show()}
")->render();
