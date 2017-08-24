<?php if (!isset($_POST['submit'])) {
  session_unset();
  $_POST['category'] = "";
  $_POST['sort']= "start";
  $_POST['startDate'] = "";
  $_POST['endDate'] = "";
  }
  $sortArr = ["start" => "Datum","title" => "Titel", "performer" => "Artiest"];
?>

<section>
  <header>
    <h1>Vind je voorstelling(en)</h1>
  </header>
  <form class="" action="index.php?page=events" method="POST">
    <div class="">

      <?php if(isset($_POST['startDate']) && isset($_POST['endDate'])): ?>
      <span>Ik zoek een voorstelling tussen</span>
      <input type="date" name="startDate" value="<?php echo $_POST['startDate'] ?>">
      <span>en</span>
      <input type="date" name="endDate" value="<?php echo $_POST['endDate'] ?>">
      <span>.</span>
    <?php else:  ?>
      <span>Ik zoek een voorstelling tussen</span>
      <input type="date" name="startDate" value="<?php echo $_POST['startDate'] ?>">
      <span>en</span>
      <input type="date" name="endDate" value="<?php echo $_POST['endDate'] ?>">
      <span>.</span>
    <?php endif; ?>
    </div>
    <div class="">
      <?php if( isset($_POST['submit']) && (empty($_POST['startDate']) && empty($_POST['endDate']))):

            elseif(isset($_POST['submit']) && (empty($_POST['startDate']) || empty($_POST['endDate']))): ?>
            <p><?php echo 'Gelieve een begin- en einddatum in te vullen.'; ?></p>


        <? endif; ?>
    </div>

    <div class="search">
      <input type="text" id="search" name="query" placeholder="Zoek op artiest..." value="<?php if(isset($_POST['query'])) echo $_POST['query'];?>"></br>
      <!-- <?php echo $_POST['query']?> -->
    </div>

    <div class="">
      <ul id="result">

      </ul>
    </div>

    <header>
      <h2>Filter:</h2>
    </header>

    <div class="">
      <span>Sorteer op:</span>
      <?php if(isset($_POST['sort']) && !empty($_POST['sort'])): ?>
      <?php foreach($sortArr as $sort => $sortValue):
        if($_POST['sort'] == $sort): ?>
      <input type="radio" name="sort" id="<?php echo $sort; ?>" value="<?php echo $sort; ?>" checked></input>
      <label for="<?php echo $sort; ?>"><?php echo $sortValue; ?></label>
    <?php else: ?>
      <input type="radio" name="sort" id="<?php echo $sort; ?>" value="<?php echo $sort; ?>"></input>
      <label for="<?php echo $sort; ?>"><?php echo $sortValue; ?></label>
    <?php    endif;
          endforeach;
        else: ?>
        <?php
        $_POST['sort']= "start";
        foreach($sortArr as $sort => $sortValue): ?>

        <input type="radio" name="sort" id="<?php echo $sort; ?>" value="<?php echo $sort; ?>"></input>
        <label for="<?php echo $sort; ?>"><?php echo $sortValue; ?></label>
      <?php endforeach;
            endif;?>

          <input type="hidden" name="hiddenSort" value="<?php echo $_POST['sort']; ?>">
    </div>

    <select class="" name="category">
      <option value="alles" >Toon alles</option>
      <?php foreach($selectAllTags as $tag):
        if (!isset($_POST['category']) || empty($_POST['category'])): ?>
        <option value="<?php echo $tag['tag']; ?>"><?php echo $tag['tag']; ?></option>
      <?php elseif($tag['tag'] == $_POST['category']): ?>
        <option value="<?php echo $tag['tag']; ?>" selected><?php echo $tag['tag']; ?></option>
      <?php else: ?>
        <option value="<?php echo $tag['tag']; ?>"><?php echo $tag['tag']; ?></option>
      <?php endif;
            endforeach;
            ?>
    </select>

    <input type="submit" name="submit"></input>
  </form>



    <!-- <?php echo $_POST['sort'];
          echo $_POST['hiddenSort'];
          ?> -->

      <?php if (isset($_POST['sort']) || !empty($_POST['sort'])):
        // echo $_POST['sort'];
      endif; ?>

  <!-- <?php if (isset($_POST['category']) || !empty($_POST['category'])):
          echo $_POST['category'];
        endif; ?> -->

  <!-- <?php if (isset($_POST['startDate']) || !empty($_POST['startDate'])):
    echo $_POST['startDate'];
    endif; ?>

  <?php if (isset($_POST['endDate']) || !empty($_POST['endDate'])):
      $_POST['endDate'] = $_POST['endDate'];
      echo $_POST['endDate'];
      endif; ?> -->


  <?php
  //echo $_POST['sort'];
  //echo $_POST['hiddenSort'];
  echo count($events).' Zoekresultaten';
  foreach($events as $event):?>
    <article>
      <header><h2><?php echo $event['title']; ?></h2></header>
        <p>start</p><p><?php echo $event['start'];?></p>
        <p>leeftijd</p><p><?php echo $event['start_age'];?> - <?php echo $event['end_age'];?> jaar</p>
        <p>performer</p><p><?php echo $event['performer'];?></p>
        <a href="index.php?page=detail&amp;id=<?php echo $event["id"]; ?>">
        <p>title</p><p><?php echo $event['title'];?></p>
        </a>
        <p>location</p><p><?php echo $event['location'];?></p>
        <p>tags</p><p><ul><?php foreach($event['tags'] as $tag): ?><li><?php echo $tag['tag'];?></li><?php endforeach;?></ul></p>
        <p>description</p><p><?php echo substr($event['description'], 0, 240).'...'; ?></p>
    </article>
  <?php endforeach; ?>

</section>
