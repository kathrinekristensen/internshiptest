<?php
session_start();
		// get session cookie
$_SESSION = array ();
		// unset all session vars
if (isset($_COOKIE[session_name()])) {
	setcookie(session_name(), '', time()-86400, '/');
		// cookie text blanked
		// expired 24 hours ago
		// the whole domain
}
session_destroy();
		// stop session
header("Location: ./index.php");
?>