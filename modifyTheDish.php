<?php

include_once 'db_configuration.php';

if (isset($_POST['ID'])){

    $id = mysqli_real_escape_string($db, $_POST['ID']);
    $name = mysqli_real_escape_string($db, $_POST['Name']);
    $type = mysqli_real_escape_string($db, $_POST['Type']);
    $state = mysqli_real_escape_string($db, $_POST['State']);
    $country = mysqli_real_escape_string($db, $_POST['Country']);
    $description = mysqli_real_escape_string($db, $_POST['Description']);
    $keywords = mysqli_real_escape_string($db, $_POST['Keywords']);
    $recipe_links = mysqli_real_escape_string($db, $_POST['Recipe_links']);
    $video_links = mysqli_real_escape_string($db, $_POST['Video_links']);
    $status = mysqli_real_escape_string($db, $_POST['Status']);
    $notes = mysqli_real_escape_string($db, $_POST['Notes']);
    if($_FILES["Image"]["name"]) {
        $image = basename($_FILES["Image"]["name"]);
    }else{
        $image = mysqli_real_escape_string($db, $_POST['Image']);
    }

    $sql = "UPDATE dishes
    SET Name = '$name',
        Type = '$type',
        State = '$state',
        Country = '$country',
        Description = '$description',
        Keywords = '$keywords',
        Recipe_links = '$recipe_links',
        Video_links = '$video_links',
        Status = '$status',
        Notes = '$notes',
        Image = '$image'

    WHERE id = '$id'";

    mysqli_query($db, $sql);
    header('location: list.php?dishUpdated=Success');

    
}//end if

?>
