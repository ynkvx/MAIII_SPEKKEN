<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <script>
      WebFontConfig = {
        google: {
          families: ['Nunito:400,700,900']
        }
      };
      (function(d) {
        var wf = d.createElement('script'), s = d.scripts[0];
        wf.async = true;
        wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js';
        s.parentNode.insertBefore(wf, s);
      })(document);
    </script>
    <meta name="description" content="SPEKKEN kindertheaterfestival"/>
    <meta name="author" content="Yannick Vercruysse"/>
    <meta name="keywords" content="Spekken, Kindertheaterfestival, Gent, kerstvakantie, paasvakantie "/>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Spekken, kindertheaterfestival</title>
    <?php echo $css;?>
  </head>
  <body>
    <header>
      <nav class="nav-bar">
        <ul class="nav-list">
          <div class="nav-list-container nav-list-logo">
            <li class="nav-item-logo home"><a href="index.php" class="logo"><span class="nav-link">home</span></a></li>
          </div>
          <div class="nav-list-menu">
            <?php
            $nav[] = array(
              'events' => 'Programma',
              'Over ons' => 'Over ons',
              'Praktisch' => 'Praktisch',
              'Contact' => 'Contact'
              );

            foreach($nav as $navItem):
              foreach($navItem as $v => $value):
              if($_GET['page'] == $v):?>
            <li class="nav-item"><a href="index.php?page=<?php echo $v; ?>" class="active s-button"><?php echo $value; ?></a></li>
        <?php elseif($_GET['page'] == "detail" && $value == "Programma"): ?>
          <li class="nav-item"><a href="index.php?page=events" class="active s-button">Programma</a></li>
        <?php  else: ?>
            <li class="nav-item"><a href="index.php?page=<?php echo $v; ?>" class="s-button"><?php echo $value; ?></a></li>
          <?php endif;
                endforeach;
                endforeach;?>
          </div>
        </ul>
      </nav>
    </header>
    <main>
      <?php if(!empty($_SESSION['info'])): ?><div class="alert alert-success"><?php echo $_SESSION['info'];?></div><?php endif; ?>
      <?php if(!empty($_SESSION['error'])): ?><div class="alert alert-danger"><?php echo $_SESSION['error'];?></div><?php endif; ?>
      <?php echo $content; ?>

    </main>
    <footer class="footer">
      <div class="footer-items">
        <div class="footer-item">
          <header class="footer-header">
            <h1>Volg ons</h1>
          </header>
          <p>Voor leuke nieuwtjes en wedstrijden!</p>
          <div class="footer-social">
              <a class="footer-social-link footer-social-twitter" href=""><span>Twitter</span></a>
              <a class="footer-social-link footer-social-facebook" href=""><span>Facebook</span></a>
              <a class="footer-social-link footer-social-instagram" href=""><span>Instagram</span></a>
          </div>
        </div>
        <div class="footer-item">
          <header class="footer-header">
            <h1>Contact</h1>
          </header>
          <p><a class="footer-mail" href="">info@spekken.be</a><br/>
            Tinnenpot, Tinnenpotstraat 21<br/>
            9000 Gent
          </p>
        </div>
        <div class="footer-item">
          <header class="footer-header">
            <h1>Nieuwsbrief</h1>
          </header>
          <p>
            Krijg wekelijks nieuws in je inbox!
          </p>
          <form action="POST">
            <div class="footer-form">
              <input type="email" name="email" class="footer-form-input" placeholder="Vul hier je e-mailadres in.">
              <button type="submit" class="footer-top-news-submit"></button>
            </div>
          </form>
        </div>
        <div class="footer-item">
          <header class="footer-header">
              <h1>Met steun van</h1>
          </header>
          <div class="footer-sponsors">
            <img class="footer-sponsor-img" src="assets/img/gent-stad@2x.png" alt="" height="30">
            <img class="footer-sponsor-img" src="assets/img/gentse-winterfeesten@2x.png" alt="" height="30">
            <img class="footer-sponsor-img" src="assets/img/free-time@2x.png" alt="" height="30">
          </div>
        </div>
      </div>
    </footer>
    <?php echo $js;?>
  </body>
</html>
