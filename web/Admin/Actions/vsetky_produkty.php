<?php

  global $db, $webController;

  $data = $_GET;

  try {
    $array['results'] = $db->dbSelect(
      "products",
      [
        "where" => [
          "available" => 1,
          "type" => $data['type']
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