<?php

  global $db, $webController;

  $data = $db->request_data();

  try {
    $array['results'] = $db->dbSelect(
      "carts_products",
      [
        "where" => [
          "id_cart" => 1
        ]
      ]
    );

    $webController->getJson($array);
  } catch(\Exception $e) {
    echo json_encode([
      "status" => "fail",
      "message" => $e->getMessage()
    ]);
  }

?>