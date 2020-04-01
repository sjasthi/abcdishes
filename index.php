<?php

  // set the current page to one of the main buttons
  $nav_selected = "HOME";

  // make the left menu buttons visible; options: YES, NO
  $left_buttons = "NO";

  // set the left menu button selected; options will change based on the main selection
  $left_selected = "";

  include("./nav.php");

?>

<html>
<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">
<head>
<style>
table.center {
    margin-left:auto; 
    margin-right:auto;
  }
</style>
</head>

<body>
<h2 style = "color: #01B0F1;">Welcome to ABC </h3>
</body>

</html>

<html>
<head>
<style>
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
</style>
</head>
<body>

<h2>Home</h2>
<p>This will be the home page for the ABC dishes</p>

<div class="row">
  <div class="column">
    <img src="images/dish2.png" alt="Snow" style="width:100%">
  </div>
  <div class="column">
    <img src="images/dish1.png" alt="Forest" style="width:100%">
    
  </div>
  <div class="column">
    <img src="images/dish3.png" style="width:100%">
  </div>
  
</div>

</body>
</html>