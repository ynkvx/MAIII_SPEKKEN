<?php
  if (!empty($_GET['id']) && isset($_GET['id'])):
?>

<div class="">
  <p><?php echo $events['title'] ?></p>
  <p><?php foreach($events['tags'] as $tag):
        echo $tag['tag'].' ';
      endforeach;
     ?>
   </p>
  <?php print_r($events); ?>

</div>


<?php else:

  header('Location: index.php');
  exit();

  endif;
 ?>
