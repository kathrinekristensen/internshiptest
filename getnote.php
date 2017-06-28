<?php 
// get note where user is? for jquery (dbinfo.js)
   $author = isset( $_GET['author'] ) ? $_GET['author']
        $sql="SELECT * FROM note WHERE author = '".$author."'";
        if (!($arr = $dbh->query($sql))) {
			  die ($dbh->error);
			}
        print(" <table>\n");
    while ($row = $arr->fetch_assoc()) {
      printf("     <tr><h2>%s</h2><p>%s</p><p>%s</p><p>%s</p></tr><br>\n"
        , $row['subject'], $row['body'], $row['author'], $row['dateofwrite']);
    }
    print(" </table>\n");
?>