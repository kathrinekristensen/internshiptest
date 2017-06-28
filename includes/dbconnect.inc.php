<?php
  $dbh = new mysqli(DBHOST, DBUSER, USERPWD, DB);
  if ($dbh->connect_errno) {
    printf("Failed to connect to Database: (%s) %s\n"
      , $dbh->connect_errno
      , $dbh->connect_error);
    exit();
  }
?>