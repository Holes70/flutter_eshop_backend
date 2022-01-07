<?php

  global $db, $dia;

  $data = $db->request_data();

  /** 
   * DELETE request 
   * tableName
   * itemID
   * @return TRUE
  */
  $db->deleteByValues(
    "carts_products", 
    [
      'idProduct' => $data->id_product,
      'idCart' => 1
    ]
  );

?>