<?php

require_once( WWW_ROOT . 'dao' . DS . 'DAO.php');

class HomeDAO extends DAO {


  // Methods

  public function recentEvents() {
    $sql = "SELECT DISTINCT
      ma3_spekken_events.*,
      ma3_spekken_performers.name as performer,
      ma3_spekken_locations.name as location
      FROM `ma3_spekken_events`
      INNER JOIN `ma3_spekken_performers` ON ma3_spekken_events.performer_id = ma3_spekken_performers.id
      LEFT OUTER JOIN `ma3_spekken_locations` ON ma3_spekken_events.location_id = ma3_spekken_locations.id
      LEFT OUTER JOIN `ma3_spekken_events_tags` ON ma3_spekken_events.id = ma3_spekken_events_tags.event_id
      LEFT OUTER JOIN `ma3_spekken_tags` ON ma3_spekken_tags.id = ma3_spekken_events_tags.tag_id
       WHERE `start` >= CURDATE() ORDER BY `start` ASC LIMIT 0, 3";

    $stmt = $this->pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if(empty($result)) {
      return $result;
    }

    $eventIds = $this->_getEventIdsFromResult($result);
    $tagsByEventId = $this->_getTagsForEventIds($eventIds);
    //handle the tags & locations in the foreach loop - we want to see all tags for a given event
    foreach($result as &$row) {
      $row['tags'] = array();
      if(!empty($tagsByEventId[$row['id']])) {
        $row['tags'] = $tagsByEventId[$row['id']];
      }
    }
    return $result;

  }

  private function _getEventIdsFromResult(&$result) {
    $eventIds = array();
    foreach($result as &$row) {
      $eventIds[] = $row['id'];
    }
    return $eventIds;
  }

  private function _getTagsForEventIds($eventIds) {
    $tagsByEventId = array();
    $eventIdsImploded = implode(', ', $eventIds);
    $sql = "SELECT
      ma3_spekken_tags.*,
      ma3_spekken_events_tags.event_id
      FROM `ma3_spekken_tags`
      RIGHT OUTER JOIN `ma3_spekken_events_tags` ON ma3_spekken_events_tags.tag_id = ma3_spekken_tags.id
      WHERE ma3_spekken_events_tags.event_id IN ({$eventIdsImploded})
    ";
    $stmt = $this->pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    foreach($result as $row) {
      if(empty($tagsByEventId[$row['event_id']])) {
        $tagsByEventId[$row['event_id']] = array();
      }
      $tagsByEventId[$row['event_id']][] = $row;
    }
    return $tagsByEventId;
  }

  public function recentBlogs() {

    $sql = "SELECT * FROM `ma3_spekken_blogs`";

    $stmt = $this->pdo->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

    return $result;

  }

}

?>
