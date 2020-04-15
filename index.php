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
<h2 style = "color: #01B0F1;">Welcome to ABCDishes </h3>
</body>

</html>
<style>
body {font-family: Arial, Helvetica, sans-serif;}

.navbar {
  width: 100%;
  background-color: Orange;
  overflow: auto;
}

.navbar a {
  float: left;
  padding: 12px;
  color: white;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background-color: #000;
}

.active {
  background-color: #4CAF50;
}

@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
  }
}
</style>
<body>


<!-- <div class="navbar">
  <a class="active" href="#"><i class="fa fa-fw fa-home"></i> Home</a> 
  <a href="#"><i class="fa fa-fw fa-search"></i> Receipes & Menus</a> 
  <a href="#"><i class="fa fa-fw fa-search"></i> Expert Advice</a>
  <a href="#"><i class="fa fa-fw fa-ingredian"></i> Ingrediant</a>
  <a href="#"><i class="fa fa-fw fa-foodtype"></i> Food Types</a>
  <a href="#"><i class="fa fa-fw fa-envelope"></i> Contact</a> 
  <a href="#"><i class="fa fa-fw fa-user"></i> Login</a>
</div> -->

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

<div class="row">
  <div class="column">
    <img src="images/food1.jpg" alt="Snow" style="width:100%" onclick="myFunction(this);">
    <h3>This is a Sour cream Spice Cake Is the Baking project that's very delicious</h3>
    <p><a href="display_dish.php?id=2">More</a></p>
  </div>
  <div class="column">
    <img src="images/food2.jpg" alt="Forest" style="width:100%" onclick="myFunction(this);">
    <h3>This is the best Pasta with meatballs that is very esay</h3>
    <p><a href="https://www.epicurious.com/recipes-menus/sour-cream-spice-cake-baking-project-we-need-article">More</a></p>
  </div>
  <div class="column">
    <img src="images/food3.jpg" style="width:100%" onclick="myFunction(this);">
    <h3>This is the best food that you can try during your time in this area</h3>
    <p><a href="https://www.epicurious.com/recipes-menus/sour-cream-spice-cake-baking-project-we-need-article">More</a></h3>
  </div>

  <div class="column">
    <img src="images/food4.jpg" alt="Forest" style="width:100%" onclick="myFunction(this);">
    <h3>Delicious white Rice and shrimp with a side of avocate mixed with spinach </h3>
    <p><a href="https://www.epicurious.com/recipes-menus/three-new-modern-spice-blends-recipes-article">More</a></p>
  </div>

  <div class="column">
    <img src="images/food5.jpg" alt="Forest" style="width:100%" onclick="myFunction(this);">
    <h3>this is the best food that you can try during your time in this area</h3>
    <p><a href="https://www.epicurious.com/recipes-menus/sour-cream-spice-cake-baking-project-we-need-article">More</a></p>
  </div>
  <div class="column">
    <img src="images/food6.jpg" alt="Forest" style="width:100%" onclick="myFunction(this);">
    <h3>this is the best food that you can try during your time in this area</h3>
    <p><a href="https://www.epicurious.com/recipes-menus/sour-cream-spice-cake-baking-project-we-need-article">More</a></p>
  </div>

</div>

<div class="container">
  <span onclick="this.parentElement.style.display='none'" class="closebtn">&times;</span>
  <img id="expandedImg" style="width:100%">
  <div id="imgtext"></div>
</div>

<script>
function myFunction(imgs) {
  var expandImg = document.getElementById("expandedImg");
  var imgText = document.getElementById("imgtext");
  expandImg.src = imgs.src;
  imgText.innerHTML = imgs.alt;
  expandImg.parentElement.style.display = "block";
}
</script>


</body>
</html>