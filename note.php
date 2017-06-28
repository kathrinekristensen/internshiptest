<?php
 session_start();
	require_once "includes/dbparams.inc.php";
	require_once "includes/dbconnect.inc.php";
	require_once("includes/authentication.inc.php");

  if (!isAuthenticated()) {  //logged on?
    header("Location: ./index.php?errorcode=2");
  }
?>
<!doctype html>
<html>
  <head>
     <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Front page</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="js/fancystuff.js"></script>
        <link rel="stylesheet" href="css/reset.css"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700|Roboto|Poiret+One" rel="stylesheet">
  </head>
  <body>
    <header>
      <h1>Make notes</h1>
    </header>
    
<main id="mydiv">
      <?php
                         include("includes/nav.inc.php");
        ?>
    <div id = "wrapper">
        <?php
                        require "includes/writenote.inc.php";
        ?>
    </div>
</main>
   
   <?php
                         include("includes/footer.inc.php");
        ?>
  </body>
</html>