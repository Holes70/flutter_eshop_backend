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

  $pocetProduktov = reset($db->dbSelect(
    tableName: "products",
    conditions: [
      "select" => "count",
      "where" => [
        "id" => $data->id_product
      ]
    ]
  ));

  $db->update(
    tableName: "products",
    rowId: $data->id_product,
    data: [
      "count" => ($pocetProduktov["count"] - 1)
    ]
  );

   /** 
   * GET inserted item ID 
   * tableName
   * @return int
  */
  echo json_encode($db->getLastItemId("carts_products"));

?>