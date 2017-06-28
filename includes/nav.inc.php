  <nav>
            <ul id="menu">
              <li>
                  <a href="index.php">Notes</a>
              </li>
              <li>
                <a href="note.php">Write note</a>
              </li>
                      <?php
                            if (!isAuthenticated()) { //logged in, in menu?
                                print(" <li><a href='login.php'>Login</a></li>");
                            }
                            else{ 
                                print(" <li><a href='logout.php'>Logout</a></li>");
                            }
                      ?>
            </ul>
            <ul id= "mobilenav">
                <li>
                    <a href ="index.php"><img src="img/text.svg" alt="icon text"></a>
                </li>
                 <li>
                    <a href ="note.php"><img src="img/write.svg" alt ="icon wirte"></a>
                </li>
                 
               <?php
                            if (!isAuthenticated()) { //logged in, in menu?
                                print(" <li><a href='login.php'><img src='img/user.svg'></a></li>");
                            }
                            else{ 
                                print(" <li><a href='logout.php'><img src='img/logout.svg'></a></li>");
                            }
                      ?>
            </ul>
          </nav>