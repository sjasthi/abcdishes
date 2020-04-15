<?php

include_once 'db_configuration.php';

if (isset($_POST['ID'])){

    $id = mysqli_real_escape_string($db, $_POST['ID']);
    //$file = mysqli_real_escape_string($db, $_POST['image_name']);

    unlink($file);

    $sql = "DELETE FROM users
            WHERE id = '$id'";

    mysqli_query($db, $sql);
    header('location: list_users.php?userDeleted=Success');
}//end if
?>
