<?php

  global $db;

  $data = $db->request_data();

  /** 
   * INSERT request 
   * tableName
   * table_data
   * @return void
  */
  $db->insert_array([
    'table' => "carts_products",
    'table_data' => [
      "id_cart" => 1, // TODO: Toto sa dynamicky podla user_id
      "id_product" => $data->id_product
    ]
  ]);

   /** 
   * GET inserted item ID 
   * tableName
   * @return int
  */
  echo json_encode($db->getLastItemId("carts_products"));

?>