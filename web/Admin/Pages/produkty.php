<?php

use Components\TableLarge;
use Components\Row;

$produkty = new TableLarge("products");
$pridat = new Row("products");

$dia->template("
  {$pridat->show()}
  {$produkty->show()}
")->render();
