<?php

require_once WWW_ROOT . 'controller' . DS . 'Controller.php';
require_once WWW_ROOT . 'dao' . DS . 'EventDAO.php';

class EventsController extends Controller {

  private $eventDAO;



  function __construct() {
    $this->eventDAO = new EventDAO();

  }

  public function index() {
    $conditions = array();
    //$_SESSION['sortResValue']=1;

    //example: search on location_id
    // $conditions[] = array(
    //   'field' => 'location_id',
    //   'comparator' => '=',
    //   'value' => 4
    // );

    //
    //example: search on performer id
    // $conditions[] = array(
    //   'field' => 'performer_id',
    //   'comparator' => '=',
    //   'value' => '1'
    // );

    if (isset($_POST['query']) && !empty($_POST['query'])){
    //example: search on organiser name
    $conditions[] = array(
      'field' => 'organiser',
      'comparator' => 'LIKE',
      'value' => $_POST['query']
    );
    //example: search on location name
    // $conditions[] = array(
    //   'field' => 'location',
    //   'comparator' => 'like',
    //   'value' => $_POST['query']
    // );

    //example: search on title
    // $conditions[] = array(
    //   'field' => 'title',
    //   'comparator' => 'like',
    //   'value' => $_POST['query']
    // );

  } else {
    //example: search on tag name
    if (isset($_POST['category'])){
        if(($_POST['category'] == 'alles') && empty($_POST['query'])){
          if( empty($_POST['startDate']) && empty($_POST['endDate'])){
            $conditions[] = array(
            'field' => 'tag',
            'comparator' => '=',
            'value' => $_POST['category']
            );
          }
        } else {
          $conditions[] = array(
          'field' => 'tag',
          'comparator' => '=',
          'value' => $_POST['category']
          );

        }
    }

    // $conditions[] = array(
    //   'field' => 'tag',
    //   'comparator' => '=',
    //   'value' => 'circus'
    // );

    //example: events in december - januari

    if (!empty($_POST['startDate']) && !empty($_POST['endDate']) && isset($_POST['startDate']) && isset($_POST['endDate']) ) {
      $startDate = $_POST['startDate']." 00:00:00";
      $endDate = $_POST['endDate']." 23:59:59";

    $conditions[] = array(
      'field' => 'start',
      'comparator' => '>=',
      'value' => $startDate
    );

    $conditions[] = array(
      'field' => 'start',
      'comparator' => '<',
      'value' => $endDate
    );

    }
    

    }

    // echo print_r($conditions);


    //example: events on januari 6
    // $conditions[] = array(
    //   'field' => 'start',
    //   'comparator' => '>=',
    //   'value' => '2018-01-06 00:00:00'
    // );
    // $conditions[] = array(
    //   'field' => 'start',
    //   'comparator' => '<',
    //   'value' => '2018-01-06 23:59:59'
    // );

    //example: events in december - januari, with a certain tag
    // $conditions[] = array(
    //   'field' => 'start',
    //   'comparator' => '>=',
    //   'value' => '2017-12-01 00:00:00'
    // );
    // $conditions[] = array(
    //   'field' => 'start',
    //   'comparator' => '<',
    //   'value' => '2018-01-31 23:59:59'
    // );
    // $conditions[] = array(
    //   'field' => 'tag',
    //   'comparator' => '=',
    //   'value' => 'figurentheater'
    // );

    $selectAllTags = $this->eventDAO->selectAllTags();
    $this->set('selectAllTags', $selectAllTags);


    if (empty($_POST['category']) && !isset($_POST['category'])) {

          $events = $this->eventDAO->selectAll();

        } elseif(($_POST['category'] == 'alles') && empty($_POST['query'])){
          if( empty($_POST['startDate']) && empty($_POST['endDate'])){
            $events = $this->eventDAO->selectAll();
          }else {
            $events = $this->eventDAO->search($conditions);
          }
        } else{

        $events = $this->eventDAO->search($conditions);
      }

      /* SORT BY DATE / TITLE / PERFORMER */

      if (isset($_POST['sort']) || !empty($_POST['sort'])){

        function sortBy($a,$b){

          if(isset($_POST['hiddenSort'])){

            if($_POST['hiddenSort'] != $_POST['sort']){

            $sortRes = $_POST['sort'];
            return strcasecmp($a[$sortRes],$b[$sortRes]);

            } else{

              $sortRes = $_POST['sort'];
              return strcasecmp($b[$sortRes],$a[$sortRes]);

              }
          } else{
            $sortRes = $_POST['sort'];
            return strcasecmp($a[$sortRes],$b[$sortRes]);
          }
        }
        usort($events,'sortBy');
      } else {
          function sortBy ($a,$b){
            return strcasecmp($a['start'],$b['start']);
          }
        usort($events,'sortBy');
      }

      $this->set('events', $events);
  }


}
