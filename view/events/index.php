<?php if (!isset($_POST['btnSubmit'])) {
  session_unset();
  $_POST['category'] = "";
  $_POST['sort']= "start";
  $_POST['startDate'] = "";
  $_POST['endDate'] = "";
  }
  $sortArr = ["start" => "Datum","title" => "Titel", "performer" => "Artiest"];
?>

<section class="section filter">
  <header class="section-header filter-header">
    <h1 class="section-header-title filter-header-title">Vind jouw goesting.</h1>
  </header>
  <div class="filter-container">
    <form class="filter-form" action="index.php?page=events" method="POST">
      <div class="filter-top">
        <div class="filter-top-container">
          <div class="filter-items hide">
            <?php if(isset($_POST['startDate']) && isset($_POST['endDate'])): ?>
              <label class="filter-label" for="startDate">Ik zoek een voorstelling tussen</label>
              <input class="filter-date" type="date" name="startDate" value="<?php echo $_POST['startDate'] ?>">
              <label class="filter-label" for="endDate"></label>
              <input class="filter-date" type="date" name="endDate" value="<?php echo $_POST['endDate'] ?>">
              <span>.</span>
            <?php else:  ?>
              <label class="filter-label"for="startDate">Ik zoek een voorstelling tussen</span>
              <input class="filter-date" type="date" name="startDate" value="<?php echo $_POST['startDate'] ?>">
              <label class="filter-label" for="endDate">en</label>
              <input class="filter-date" type="date" name="endDate" value="<?php echo $_POST['endDate'] ?>">
              <span class="filter-label">.</span>
            <?php endif; ?>
            <div class="filter-error">
              <?php if( isset($_POST['btnSubmit']) && (empty($_POST['startDate']) && empty($_POST['endDate']))):
                    elseif(isset($_POST['btnSubmit']) && (empty($_POST['startDate']) || empty($_POST['endDate']))):?>
              <p><?php echo 'Gelieve een begin- en einddatum in te vullen.'; ?></p>
              <? endif; ?>
            </div> <!-- end filter-error -->
          </div> <!-- end filter-items -->
          <div class="filter-button">
            <p class="filter-link">Filter</p>
          </div>
          <div class="filter-search-container">
            <input class="filter-search-bar"type="text" id="search" name="query" placeholder="Zoek op artiest... bv. Tyka" value="<?php if(isset($_POST['query'])) echo $_POST['query'];?>"></br>
            <!-- <?php echo $_POST['query']?> -->
            <input class="filter-search"type="submit" id="search" name="btnSubmit" value="">
          </div> <!-- end filter-search-container -->
        </div> <!-- end filter-top-container -->
      </div> <!-- end filter-top -->

      <div class="filter-bottom hide">
        <div class="filter-bottom-item">
          <label class="filter-bottom-label"for="category">Categorie:</label>
          <select class="filter-category" name="category">
            <option value="alles" >Toon alles</option>
            <?php foreach($selectAllTags as $tag):
              if (!isset($_POST['category']) || empty($_POST['category'])): ?>
              <option value="<?php echo $tag['tag']; ?>"><?php echo $tag['tag']; ?></option>
            <?php elseif($tag['tag'] == $_POST['category']): ?>
              <option value="<?php echo $tag['tag']; ?>" selected><?php echo $tag['tag']; ?></option>
            <?php else: ?>
              <option value="<?php echo $tag['tag']; ?>"><?php echo $tag['tag']; ?></option>
            <?php endif;
                  endforeach;?>
          </select>
        </div> <!-- end filter-bottom-item-->
        <div class="filter-bottom-item">
          <span class="filter-bottom-label">Sorteer op:</span>
          <?php if(isset($_POST['sort']) && !empty($_POST['sort'])): ?>
          <?php foreach($sortArr as $sort => $sortValue):
                if($_POST['sort'] == $sort): ?>
          <input class="filter-sort-radio" type="radio" name="sort" id="<?php echo $sort; ?>" value="<?php echo $sort; ?>" checked></input>
          <label class="filter-sort-label" for="<?php echo $sort; ?>"><?php echo $sortValue; ?></label>
          <?php else: ?>
          <input class="filter-sort-radio" type="radio" name="sort" id="<?php echo $sort; ?>" value="<?php echo $sort; ?>"></input>
          <label class="filter-sort-label" for="<?php echo $sort; ?>"><?php echo $sortValue; ?></label>
          <?php endif;
                endforeach;
                else: ?>
          <?php $_POST['sort']= "start";
                foreach($sortArr as $sort => $sortValue): ?>
          <input class="filter-sort-radio" type="radio" name="sort" id="<?php echo $sort; ?>" value="<?php echo $sort; ?>"></input>
          <label class="filter-sort-radio" for="<?php echo $sort; ?>"><?php echo $sortValue; ?></label>
          <?php endforeach;
                endif;?>
          <input type="hidden" name="hiddenSort" value="<?php echo $_POST['sort']; ?>">

        </div> <!-- end filter-bottom-item-->

        <div class="filter-bottom-item p-button">
          <input class="filter-bottom-button" type="submit" name="btnSubmit" value="FILTER ›"></input>
        </div> <!-- end filter-bottom-item-->
      </div><!-- end filter-bottom -->
    </form>
  </div> <!-- end-filter-container-->

  </section>

  <section class="section results">
    <div class="results-info">
      <p><?php echo count($events).' Zoekresultaten'; ?></p>
    </div>
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
              <p class="event-tag">
                <?php foreach($event['tags'] as $tag):
                    echo $tag['tag'].' ';
                  endforeach;?>
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
  </section>
