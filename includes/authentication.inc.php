<?php
   function checkUser($user, $pwdtry, $db) {
      // Using prepared statements to prevent SQL injection
      if ($stmt = $db->prepare("select username, password
                                  from users
                                  where username = ?")) {
        $stmt->bind_param('s', $user);  // Bind $user to parameter
        $stmt->execute();               // Execute the prepared query

        $stmt->store_result();          // cache query result set
        $stmt->bind_result($username
                         , $password);      // get variables from result
        $stmt->fetch();                 // assign result set to variables

        $pwd = hash('sha512', $pwdtry ); // hash entered pwd
        if ($username == $user && $pwd == $password) { // with salt, match
            $_SESSION['authenticated'] = $user;   // set auth succesfull
        } else {
            $when = strftime("%F %T", time());
            $stmt = $db->prepare("insert into loginfail
                                  (uid, loginwhen, ip)
                                  values(?, ?, ?);");
            $stmt->bind_param('ssd', $user, $when, $_SERVER['REMOTE_ADDR']);
            $stmt->execute();

            throw new Exception("Not authenticated", 3);
        }
      } else {
         die("<h1>?</h1>");
      }

   }
   
   function Authenticate($user, $pwd, $return, $db) {
      try {
         checkUser($user, $pwd, $db);         //  auth
      }
      catch (Exception $e) {
         $return .= "?errorcode=" . $e->getCode(); // catch possible err
         header("Location: " . $return);           // return if err
      }
   }

   function isAuthenticated() {
      if (isset($_SESSION['authenticated'])) {
         return true;
      } else {
         return false;
      }
   }
?>