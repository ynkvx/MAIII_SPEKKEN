<?php

require_once( WWW_ROOT . 'dao' . DS . 'DAO.php');

class HomeDAO extends DAO {


  // Methods

  public function recentEvents() {
    $sql = "SELECT `tag` FROM ma3_spekken_tags";

    $stmt = $this->pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

    return $result;

  }

  public function recentBlogs(){


  }

}

?>
