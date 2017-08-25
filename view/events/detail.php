<?php
  if (!empty($_GET['id']) && isset($_GET['id'])):
?>

<section class="section detail">
  <header class="section-header detail-header hide">
    <h1 class="section-header-title detail-header-title">Detailpagina</h1>
  </header>
  <a class="detail-back-to-events s-button" href="index.php?page=events"><span>‹ Naar overzicht</span></a>
  <article class="detail-article">
    <header class="detail-header hide">
      <h1 class="detail-title"><?php echo $events['title'] ?></h1>
    </header>
    <div class="detail-img-nav">
      <a class="detail-prev-button" href="#"></a>
      <a class="detail-next-button" href="#"></a>
    </div>
    <div class="detail-img-container">
      <img class="detail-img"
      src="assets/img/events/event<?php echo $events['id'] ?>_1.jpg"
      alt="<?php echo $events['title'] ?>"
      width="960"
      height="300"/>
    </div>
    <div class="detail-info">
        <div class="detail-info-age">
          <p class="detail-info-age-item"><?php echo $events['start_age'];?>-<?php echo $events['end_age'];?></p>
          <p class="detail-info-age-item detail-info-age-item-small">jaar</p>
        </div>
        <div class="detail-descr-top">
          <div class="detail-descr-items">
            <p class="detail-descr-subtitle">Datum:</p>
            <p class="detail-descr-item"><?php echo date("d-m-Y", strtotime($events['start'])); ?></p>
          </div>
          <div class="detail-descr-items">
            <p class="detail-descr-subtitle">Aanvang:</p>
            <p class="detail-descr-item"><?php echo date("H:i", strtotime($events['start'])); ?></p>
          </div>
          <div class="detail-descr-items">
            <p class="detail-descr-subtitle">Prijs:</p>
            <p class="detail-descr-item">€ 10<a class="detail-descr-discount">*kortingstarieven</a></p>
          </div>
          <div class="detail-descr-items">
            <p class="detail-descr-subtitle">Locatie:</p>
            <p class="detail-descr-item"><?php echo $events['location']; ?></p>
          </div>

        </div>
        <div class="detail-descr-center">
          <p class="detail-descr-title"><?php echo $events['title'] ?></p>
        </div>
        <div class="detail-descr-bottom">
          <p class="detail-descr-performer"><?php echo $events['performer'] ?></p>
          <div class="detail-descr-social">
              <a class="detail-descr-social-button s-button"href="#">Website</a>
              <a class="detail-descr-social-button s-button"href="#">Facebook</a>
          </div>
          <hr class="detail-descr-bottom-line">
          <div class="detail-descr-tag">
            <p class="detail-descr-tag-title">Categorie:</p>
            <p class="detail-descr-tag-item">
              <?php foreach($events['tags'] as $tag):
                    echo $tag['tag'].' ';
                    endforeach;?>
            </p>
          </div>
        </div>
        <div class="detail-descr-images">
          <?php $textArr = $events['event_img'];
                $imgArr[] = explode(',', $textArr);?>
          <?php foreach($imgArr as $img ): ?>
            <?php foreach($img as $eventImg): ?>
              <img src="assets/img/events/<?php echo $eventImg; ?>.jpg" alt="image <?php echo $events['title']; ?>" width="150" height="150" />
          <?php endforeach;?>
          <?php endforeach;?>
        </div>
        <div class="detail-descr-text">
            <p><?php echo $events['description'] ?></p>
            <a href="#" class="p-button"><span>Koop Tickets (10€)*</span></a>
            <a href="#" class="detail-descr-discount">* kortingstarieven</a>
        </div>
    </div> <!-- end event-info-->
  </article>
</section>

<section class="section soon">
    <header class="section-header-small">
      <h1 class="section-header-title-small">
        <span>Gelijkaardige voorstellingen</span>
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
