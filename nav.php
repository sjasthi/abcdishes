<?php
  require_once('initialize.php');
?>

<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="styles/main_style.css" type="text/css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="styles/custom_nav.css" type="text/css">
        <title>ABCDishes</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/css/dataTables.bootstrap.min.css" rel="stylesheet"/>
        <link rel="stylesheet" href="./mainStyleSheet.css">
    </head>

<body class="body_background">
<div id="wrap">
    <div id="nav">
        <ul>
            <a href="index.php">
              <li class="horozontal-li-logo">
              <img src ="./images/main_logo.png">
              <br/>ABCDishes</li>
            </a>

            <a href="index.php">
              <li <?php if($nav_selected == "HOME"){ echo 'class="current-page"'; } ?>>
              <img src="./images/home.png">
              <br/>Home</li>
            </a>

            <a href="list.php">
              <li <?php if($nav_selected == "LIST"){ echo 'class="current-page"'; } ?>>
                <img src="./images/list.png">
                <br/>List Dishes</li>
            </a>
      
            <a href="reports.php">
              <li <?php if($nav_selected == "REPORTS"){ echo 'class="current-page"'; } ?>>
                <img src="./images/reports_summary.png">
                <br/>Reports</li>
            </a>

            <a href="preferences.php">
              <li <?php if($nav_selected == "PREFERENCES"){ echo 'class="current-page"'; } ?>>
                <img src="./images/admin_configure.png">
                <br/>Preferences</li>
            </a>

            <a href="compileTheBook.php">
              <li <?php if($nav_selected == "COMPILE"){ echo 'class="current-page"'; } ?>>
                <img src="./images/compile.png">
                <br/>Compile</li>
            </a>

            <a href="admin.php">
              <li <?php if($nav_selected == "ADMIN"){ echo 'class="current-page"'; } ?>>
                <img src="./images/admin.png">
                <br/>Admin</li>
            </a>


            <a href="about.php">
             <li <?php if($nav_selected == "ABOUT"){ echo 'class="current-page"'; } ?>>
              <img src="./images/about.png">
              <br/>About</li>
            </a>

            <?php  //Check if they are logged out show correct login or logout function

            if (isset($_SESSION['logged_in'])){

            echo '<a href="logout.php">
            <li>
             <img src="./images/logout.png">
            <br/>Logout</li>
            </a>';
                    
              
          }else{
          echo' <a href="loginform.php">
          <li>
            <img src="./images/login.png">
            <br/>Login</li>
            </a> ';
        }
        ?>

      </ul>
      <br />
    </div>


    <table style="width:1250px">
      <tr>
        <?php
            if ((isset($left_buttons)) and ($left_buttons == "YES")) {
        ?>

        <td style="width: 120px;" valign="top">
        <?php
            if ($nav_selected == "HOME") {
                include("./index.php");
            } elseif ($nav_selected == "LIST") {
                include("./left_menu_list.php");
            } elseif ($nav_selected == "TIMELINE") {
                include("./left_menu_timeline.php");
            } elseif ($nav_selected == "REPORTS") {
                include("./left_menu_reports.php");
            } elseif ($nav_selected == "Reports") {
                include("./left_menu_Reports.php");
            } elseif ($nav_selected == "HISTORY") {
                include("./left_menu_history.php");
            } elseif ($nav_selected == "TREND") {
              include("./left_menu_trend.php");
           } elseif ($nav_selected == "SETUP") {
            include("./left_menu_setup.php");
          } elseif ($nav_selected == "ABOUT") {
          include("./left_menu_about.php");
          }elseif ($nav_selected == "HELP") {
                include("./left_menu_help.php");
            } else {
                include("./left_menu.php");
            }
        ?>
        </td>
        <td style="width: 1100px;" valign="top">
        <?php
          } else {
        ?>
        <!-- <td style="width: 100%;" valign="top"> -->
        <?php
          }
        ?>





<?php
            if ((isset($admin_left_buttons)) and ($admin_left_buttons == "YES")) {
        ?>

        <td style="width: 120px;" valign="top">
        <?php
            if ($nav_selected == "HOME") {
                include("./index.php");
            } elseif ($nav_selected == "LIST") {
                include("./left_menu_list.php");
            } elseif ($nav_selected == "TIMELINE") {
                include("./left_menu_timeline.php");
            } elseif ($nav_selected == "REPORTS") {
                include("./left_menu_reports.php");
            } elseif ($nav_selected == "Reports") {
                include("./left_menu_Reports.php");
            } elseif ($nav_selected == "HISTORY") {
                include("./left_menu_history.php");
            } elseif ($nav_selected == "TREND") {
              include("./left_menu_trend.php");
           } elseif ($nav_selected == "SETUP") {
            include("./left_menu_setup.php");
          } elseif ($nav_selected == "ABOUT") {
          include("./left_menu_about.php");
          }elseif ($nav_selected == "HELP") {
                include("./left_menu_help.php");
            } else {
                include("./admin_left_menu.php");
            }
        ?>
        </td>
        <td style="width: 1100px;" valign="top">
        <?php
          } else {
        ?>
        <!-- <td style="width: 100%;" valign="top"> -->
        <?php
          }
        ?>

        
