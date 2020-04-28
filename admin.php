<?php

  // set the current page to one of the main buttons
  $nav_selected = "ADMIN";

  // make the left menu buttons visible; options: YES, NO
  $left_buttons = "NO";
  $admin_left_buttons = "YES";

  // set the left menu button selected; options will change based on the main selection
  $admin_left_selected = "";

  include("./nav.php");

  
?>

<?php
        if(isset($_GET['backupComplete'])){
            if($_GET["backupComplete"] == "Success"){
                echo '<br><h3>Success! Your dish has been added!</h3>';
            }
        }

        if(isset($_GET['dishUpdated'])){
            if($_GET["dishUpdated"] == "Success"){
                echo '<br><h3>Success! Your dish has been modified!</h3>';
            }
        }

        
    ?>
<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">
