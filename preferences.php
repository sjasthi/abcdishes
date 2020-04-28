<?php 
require 'bin/functions.php';
require 'db_configuration.php';
$nav_selected = "PREFERENCES";
  $left_buttons = "NO";
  $left_selected = "";
$page_title = 'Preferences';
include('nav.php'); 
    $page="list.php";   
    verifyLogin($page); 



/* $sql1 = "SELECT `value` FROM `preferences` WHERE `name`= 'NO_OF_TOPICS_PER_ROW'";
$sql2 = "SELECT `value` FROM `preferences` WHERE `name`= 'NO_OF_QUESTIONS_TO_SHOW'";

$results = mysqli_query($db,$sql1);
$results2 = mysqli_query($db,$sql2);

if(mysqli_num_rows($results)>0){
    while($row = mysqli_fetch_assoc($results)){
        $column[] = $row;
    }
}
$rows = $column[0]['value'];

if(mysqli_num_rows($results2)>0){
    while($row = mysqli_fetch_assoc($results2)){
        $puzzle[] = $row;
    }
}
$puzzles = $puzzle[0]['value']; */


$sql1 = "SELECT `value` FROM `preferences` WHERE `name`= 'NO_OF_DISHES_PER_ROW'";
$sql2 = "SELECT `value` FROM `preferences` WHERE `name`= 'NO_OF_DISHES_TO_SHOW'";
$sql3 = "SELECT `comments` FROM `preferences` WHERE `name`= 'DEFAULT_VIEW_FOR_HOME_PAGE'";
$sql4 = "SELECT `value` FROM `preferences` WHERE `name`= 'IMAGE_HEIGHT_IN_GRID'";
$sql5 = "SELECT `value` FROM `preferences` WHERE `name`= 'IMAGE_WIDTH_IN_GRID'";
$sql6 = "SELECT `value` FROM `preferences` WHERE `name`= 'IMAGE_HEIGHT_IN_CAROUSAL'";
$sql7 = "SELECT `value` FROM `preferences` WHERE `name`= 'IMAGE_WIDTH_IN_CAROUSAL'";
$sql10 = "SELECT `value` FROM `preferences` WHERE `name`= 'DESCRIPTION_LENGTH'";



$results1 = mysqli_query($db,$sql1);
$results2 = mysqli_query($db,$sql2);
$results3 = mysqli_query($db,$sql5);
$results4 = mysqli_query($db,$sql4);
$results5 = mysqli_query($db,$sql3);
$results6 = mysqli_query($db,$sql6);
$results7 = mysqli_query($db,$sql7);
$results10 = mysqli_query($db,$sql10);



if(mysqli_num_rows($results1)>0){
    while($row = mysqli_fetch_assoc($results1)){
        $column[] = $row;
    }
}
$rows = $column[0]['value'];

if(mysqli_num_rows($results2)>0){
    while($row = mysqli_fetch_assoc($results2)){
        $dishes[] = $row;
    }
}
$dish = $dishes[0]['value'];

if(mysqli_num_rows($results10)>0){
    while($row = mysqli_fetch_assoc($results10)){
        $lengths[] = $row;
    }
}
$length = $lengths[0]['value'];

/* if(mysqli_num_rows($results3)>0){
    while($row = mysqli_fetch_assoc($results3)){
        $pic[] = $row;
    }
}
$favorite = $pic[0]['value'];

if(mysqli_num_rows($results4)>0){
    while($row = mysqli_fetch_assoc($results4)){
        $numdish[] = $row;
    }
}
$defaultView = $numdish[0]['value'];

if(mysqli_num_rows($results5)>0){
    while($row = mysqli_fetch_assoc($results5)){
        $views[] = $row;
    }
}



if(mysqli_num_rows($results6)>0){
    while($row = mysqli_fetch_assoc($results6)){
        $height_grid[] = $row;
    }
}


if(mysqli_num_rows($results7)>0){
    while($row = mysqli_fetch_assoc($results7)){
        $width_grid[] = $row;
    }
}

//SQL statements for drop down select tag

$sql_dropdown = "SELECT `name` FROM `dishes`";
$result_dropdown = mysqli_query($db,$sql_dropdown);

//stores all dresses into an array
if(mysqli_num_rows($result_dropdown)>0){
    while($row = mysqli_fetch_assoc($result_dropdown)){
        $dish_names[] = $row;
    }
}

$count_dishes = count($dish_names);
 */


if( isset( $_SESSION['logged_in'] ) ) { //use database for index layout
    include('db_preferences.php');
 }else { //use temporary cookies for index layout
    include('cookie_preferences.php');
 }


?>

<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">
    