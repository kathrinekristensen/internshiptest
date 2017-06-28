<?php
    $sql = "select author, body, subject, dateofwrite";
	$sql .= " from note";	
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