<?php
	session_start();
	require_once "includes/dbparams.inc.php"; //db info
	require_once "includes/dbconnect.inc.php"; //db connection
	require_once ("includes/authentication.inc.php"); //login function
	if (!isAuthenticated()) { //is user logged in
		if(isset($_POST['user']) && isset($_POST['pwd'])){
			Authenticate($_POST ['user']
							 , $_POST ['pwd']
							 , $_POST ['PHP_SELF']
							 , $dbh);
		}}
		if (isAuthenticated()) { //logged in
			header("Location: ./index.php");
		}
?>
<!doctype html>
<html>
  <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Login</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
        <script src="js/fancystuff.js"></script>   
        <link rel="stylesheet" href="css/reset.css"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700|Roboto|Poiret+One" rel="stylesheet">
  </head>
  
  <body>
    <header>
      <h1>Login</h1>
    </header>
        <main id="mydiv">
             <?php
                         include("includes/nav.inc.php");
        ?>
      <form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post">
        <table id="login">
          <tr>
            <td>Username </td><td><input type="text" name="user"/></td>
          </tr>
          <tr>
            <td>Password </td><td><input type="password" name="pwd"/></td>
          </tr>
          <tr>
            <td>
              <input type="submit" value="Login" id="loginb"/>
            </td>
            <td>
              <input type="button" value="I give up" id="giveup"  onclick="window.location='../index.php'"/>
            </td>
          </tr>
        </table>
      </form>
    </main>
        <?php
                 include("includes/footer.inc.php");
        ?>
  </body>
</html>
