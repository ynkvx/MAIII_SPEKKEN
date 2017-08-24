<section class="section intro">
  <div class="intro-container intro-top">
    <img class="intro-img" src="assets/img/intro-img-boy.png" alt="" width="132" height="326">
  </div>
  <div class="intro-container intro-bottom">
    <header class="intro-header">
      <h1 class="intro-title">Spekken,<br/>ieder zijn goesting.</h1>
    </header>
    <h2>Het theaterfestival waar iedereen zijn goesting vindt.</h2>
    <a class="p-button" href="index.php?page=events"><span>Ontdek het programma</span></a>
  </div>
</section> <!-- end intro -->

<section class="section soon">
    <header class="section-header-small">
      <h1 class="section-header-title-small">
        <span>Binnenkort</span>
      </h1>
    </header>
    <div class="events">
      <?php foreach( $events as $event ): ?>
      <article class="event">
        <header class="event-header">
          <h1 class="hide"><?php echo $event['title'];?></h1>
        </header>
        <div class="event-img-container">
          <img class="event-img" src="assets/img/events/event<?php echo $event['id'] ?>_1.jpg" alt="event<?php echo $event['id'] ?>" width="280" height="225"/>
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
              <a class="event-title s-button" href="index.php?page=detail&id=<?php echo $event['id'] ?>" ><?php echo $event['title'];?></a>
              <p class="event-performer"><?php echo $event['performer']; ?></p>
            </div>
        </div> <!-- end event-info-->
      </article>
    <?php endforeach; ?>
    </div> <!-- end events-->
</section> <!-- end soon -->

<section class="about">
  <div class="about-container">
    <div class="about-wrapper">
      <header class="section-header about-header">
        <h1>Ken jij ons al?</h1>
      </header>
      <p class="section-header-text">Wij organiseren theatervoorstellingen voor kinderen, en hebben bijna evenveel voorstellingen als er smaken snoep zijn.</p>
      <div class="about-items">
        <article class="about-item">
          <header class="about-header">
            <h1 class="about-title">Wie</h1>
          </header>
          <img src="assets/img/age-icon@3x.png" alt="leeftijd" width="172" height="118">
          <p>Kinderen van 2 tot 12 jaar, en hun begeleiders.</p>
        </article>
        <article class="about-item">
          <header class="about-header">
            <h1 class="about-title">Wanneer</h1>
          </header>
          <img src="assets/img/date-icon@3x.png" alt="datum" width="121" height="122">
          <p>Iedere Paas- en Kerstvakantie.</p>
        </article>
        <article class="about-item">
          <header class="about-header">
            <h1 class="about-title">Waar</h1>
          </header>
          <img src="assets/img/location-icon@3x.png" alt="datum" width="130" height="130">
          <p>In <a href="#">Tinnenpot</a> en <a href="#">Het Gravensteen</a></p>
        </article>
        <a class="p-button" href="#"><span>Meer over ons</span></a>
      </div> <!-- about-items -->
    </div>
  </div> <!-- about-container -->
</section> <!-- end about -->

<section class="section news">
  <header class="section-header news-header"><h1 class="hide">Nieuws</h1></header>
  <article class="news-article">
    <header class="section-header news-header">
      <h1>Gratis knutselateliers!</h1>
    </header>
      <img class="news-img" src="assets/img/knutselateliers.png" alt="Knutselateliers" width="400" height="300">
      <p>Vanaf paasmaandag 2 april tot en met vrijdag 13 april. Elke dag gratis aanschuiven aan de knutselateliers!</p>
    <a class="p-button" href="#"><span>Meer weten?</span></a>
  </article>
</section> <!-- end news -->

<section class="section blog">
  <header class="section-header-small blog-header">
      <h1 class="section-header-title-small blog-header-title">Blog</h1>
  </header>
  <div class="blog-container">
    <?php foreach ($blogs as $blog): ?>
    <article class="blog-item">
      <img class="blog-img" src="assets/img/<?php echo $blog['blog_image']; ?>" alt="<?php echo $blog['blog_image']; ?>" width="300" height="225">
      <div class="blog-info">
        <h1><?php echo $blog['blog_title']; ?></h1>
        <h2><?php echo $blog['blog_date']; ?></h2>
        <p><?php echo substr($blog['blog_text'], 0, 240).'...'; ?></p>
        <a class="s-button" href="#"><span>Lees meer</span></a>
      </div>
    </article>
  <?php endforeach; ?>
  </div>
</section> <!-- end blog -->
