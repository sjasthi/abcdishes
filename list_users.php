<?php

  // set the current page to one of the main buttons
  $nav_selected = "ADMIN";

  // make the left menu buttons visible; options: YES, NO
  $left_buttons = "NO";
  $admin_left_buttons = "YES";

  // set the left menu button selected; options will change based on the main selection
  $admin_left_selected = "USERS";

  echo '<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">';
require 'bin/functions.php';

require 'db_configuration.php';

$query = "SELECT * FROM users";
//list
$GLOBALS['data'] = mysqli_query($db, $query);

  include("./nav.php");
  
?>

<?php include("./footer.php"); ?>

<?php $page_title = 'Users'; ?>
<?php 
    $page="list_user.php";
    verifyLogin($page);
?>

<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">

<style>
    #title {
        text-align: center;
        color: darkgoldenrod;
    }
    thead input {
        width: 100%;
    }
    .thumbnailSize{
        height: 100px;
        width: 100px;
        transition:transform 0.25s ease;
    }
    .thumbnailSize:hover {
        -webkit-transform:scale(3.5);
        transform:scale(3.5);
    }
</style>

<!-- Page Content -->
<br><br>
<div class="container-fluid">
<?php
        if(isset($_GET['createUser'])){
            if($_GET["createUser"] == "Success"){
                echo '<br><h3>Success! a user has been added!</h3>';
            }
        }

        if(isset($_GET['userUpdated'])){
            if($_GET["userUpdated"] == "Success"){
                echo '<br><h3>Success! user information has been modified!</h3>';
            }
            
        }

        if(isset($_GET['userDeleted'])){
            if($_GET["userDeleted"] == "Success"){
                echo '<br><h3>Success! the user has been deleted!</h3>';
            }
        }

    ?>
   
   
    <h2 id="title">Users</h2><br>    
    <div id="customerTableView">
	
        <button><a class="btn btn-sm" href="create_user.php">Create new user</a></button>
        <table class="display" id="ceremoniesTable" style="width:100%">
	
            <div class="table responsive">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Modify</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
			
                <?php
                while($row = $data->fetch_assoc()) {
                    $id = $row["id"];
                    $first_name = $row["first_name"];
                    $last_name = $row["last_name"];
                    $email = $row["email"];
                    $role = $row["role"];
                    
                ?>

                <tr>
                    <td><?php echo $id; ?></td>
                    <td><?php echo $first_name; ?></td>
                    <td><?php echo $last_name; ?></td>
                    <td><?php echo $email; ?></td>
                    <td><?php echo $role; ?></td>

                    
                    <?php echo '<td><a class="btn btn-warning btn-sm" href="modify_user.php?id='.$row["id"].'">Modify</a></td>' ?>
                    <?php echo '<td><a class="btn btn-danger btn-sm" href="delete_user.php?id='.$row["id"].'">Delete</a></td>' ?>
                </tr>

                <?php     
                }//end while
                ?>

                </tbody>
            </div>
        </table>
    </div>
</div>
