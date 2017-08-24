<?php
  if (!empty($_GET['id']) && isset($_GET['id'])):
?>
<section class="section">
  <header class="section-header">
    <h1 class="section-header-title"><?php echo $events['title'] ?></h1>
  </header>
  <div class="">
    <div class="">
      <a class="event-detail-nav-prev"href="#">Vorige</a>
      <img class="event-detail-header-img"src="assets/img/events/event<?php echo $events['id'] ?>_1.jpg" alt="" width="100" height="100">
      <a href="event-detail-nav-next">Volgende</a>
    </div>
    <p><?php
    //$rememberFirstTag="";
    foreach($events['tags'] as $tag):
        //echo $tag['id'].' ';
        //$rememberFirstTag[].=$tag['tag'];
        endforeach;
        //$rememberFirstTag = reset($rememberFirstTag);
        //echo $rememberFirstTag;
        //print_r($events);
       ?>
     </p>
  </div>
</section>
<section class="section soon">
    <header class="section-header-small">
      <h1 class="section-header-title-small">
        <span>Binnenkort</span>
      </h1>
    </header>
    <div class="events">
      <?php
      $countEvents = 0;
      foreach( $similarEvents as $event ):
      if ($_GET['id'] == $event['id']):
      else:
      ?>
      <article class="event">
        <header class="event-header">
          <h1 class="hide"><?php echo $event['title'];?></h1>
        </header>
        <div class="event-img-container">
          <img class="event-img" src="assets/img/events/event<?php echo $event['id'] ?>_1.jpg" alt="event<?php echo $event['id'] ?>" width="300" height="225"/>
        </div>
        <div class="event-info">
            <div class="event-age">
              <p class="event-age-item"><?php echo $event['start_age'];?>-<?php echo $event['end_age'];?></p>
              <p class="event-age-item event-age-item-small">jaar</p>
            </div>
            <div class="event-descr-top">
              <p class="event-date"><?php echo date("d-m-Y", strtotime($event['start'])); ?></p>
              <p class="event-tag"><?php foreach($event['tags'] as $tag):
                    echo $tag['tag'].' ';
                  endforeach;
                 ?>
               </p>
            </div>
            <div class="event-descr-bottom">
              <a class="event-title s-button" href="index.php?page=detail&id=<?php echo $event['id'] ?>" ><?php echo substr($event['title'], 0, 29); ?></a>
              <p class="event-performer"><?php echo $event['performer']; ?></p>
            </div>
        </div> <!-- end event-info-->
      </article>
    <?php
      if (++$countEvents == 3) break;
      endif;
      endforeach;
    ?>
    </div> <!-- end events-->
</section> <!-- end soon -->

<?php else:

  header('Location: index.php');
  exit();

  endif;
 ?>
