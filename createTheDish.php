<?php
 $nav_selected = "LIST";
  $left_buttons = "NO";
  $left_selected = "";
  include("./nav.php");
  include("./footer.php");  
  include_once 'db_configuration.php';


    // Initialize variables        
	$Names = mysqli_real_escape_string($db,$_POST['Names']);
    $Type = mysqli_real_escape_string($db,$_POST['Type']);
    $State = mysqli_real_escape_string($db,$_POST['State']);
    $Country = mysqli_real_escape_string($db,$_POST['Country']);
    $Description = mysqli_real_escape_string($db,$_POST['Description']);
    $Video_links = mysqli_real_escape_string($db,$_POST['Video_links']);
    $Recipe_links = mysqli_real_escape_string($db,$_POST['Recipe_links']);
	$Status = mysqli_real_escape_string($db,$_POST['Status']);
    $Notes = mysqli_real_escape_string($db,$_POST['Notes']);
    $Image = basename($_FILES["Image"]["name"]);



    $validate = true;    
    

    $sql = "INSERT INTO dishes(Name, Type, State, Country, Description, Recipe_links, 
        Video_links, Status, Notes, Image)

    VALUES ('$Names','$Type','$State','$Country','$Description','$Recipe_links',
        '$Video_links','$Status','$Notes', '$Image')
    ";

    mysqli_query($db, $sql);
    header('location: list.php?createDish=Success');
    ?>
	<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">



   