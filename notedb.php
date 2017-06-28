<?php
  session_start();
	require_once "includes/dbparams.inc.php";
	require_once "includes/dbconnect.inc.php";
	require_once("includes/authentication.inc.php");

  if (!isAuthenticated()) {  // logged on?
    header("Location: ./index.php?errorcode=2");
  }
  if (isset($_POST['insert'])) {
      // insert
	  if (!(
           (isset($_POST['subject']) && $_POST['subject'] != '')
        && (isset($_POST['body']) && $_POST['body'] != '')
        )) {
        header("Location: ./note.php");
      } 
      $t = new DateTime();
      $today = $t->format('Y-m-d H:i:s');
      $dbh->query('start transaction;');
      if ($sql = $dbh->prepare("insert into note
                           (author, dateofwrite, subject, body)
                            values(?, ?, ?, ?);")) {
        $sql->bind_param('ssss',
                        $_SESSION['authenticated'],
                        $today,
                        $_POST['subject'],
                        $_POST['body']);
        $sql->execute();
        $sql->reset();
      } else {
        die("Note fail<br/>".$dbh->error);
      }
      if (isset($_POST['au']) && $_POST['au'] != "") {
      }
      $dbh->query('commit;');
  } 
  header("Location: ./index.php");
?>
