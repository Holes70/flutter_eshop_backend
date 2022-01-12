<?php

  global $db, $webController;

  $data = $_GET;

  try {
    if ($data['type'] == "1") {
      $array['results'] = $db->dbSelect(
        "products",
        [
          "where" => [
            "available" => 1,
            "type" => [1, 4],
          ]
        ]
      );
    } else if ($data['type'] == "2") {
      $array['results'] = $db->dbSelect(
        "products",
        [
          "where" => [
            "available" => 1,
            "type" => [2, 4],
          ]
        ]
      );
    } else {
      $array['results'] = $db->dbSelect(
        "products",
        [
          "where" => [
            "available" => 1
          ]
        ]
      );
    }

    $webController->getJson($array);
  } catch(\Exception $e) {
    echo json_encode([
      "status" => "fail",
      "message" => $e->getMessage()
    ]);
  }

?>