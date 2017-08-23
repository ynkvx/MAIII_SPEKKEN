<?php

require_once WWW_ROOT . 'controller' . DS . 'Controller.php';
require_once WWW_ROOT . 'dao' . DS . 'EventDAO.php';
require_once WWW_ROOT . 'dao' . DS . 'HomeDAO.php';


class HomeController extends Controller {

	private $eventDAO;

	function __construct() {

		$this->homeDAO = new HomeDAO();


	}

	public function index() {

    $events = $this->homeDAO->recentEvents();

    $this->set('events', $events);

		$blogs = $this->homeDAO->recentBlogs();

		$this->set('blogs', $blogs);

  }

}
