

<?php 

 // set the current page to one of the main buttons
  $nav_selected = "ADMIN";

  // make the left menu buttons visible; options: YES, NO
  $left_buttons = "NO";

  // set the left menu button selected; options will change based on the main selection
  $left_selected = "";

    include("./nav.php");
    require 'bin/functions.php';
    require 'db_configuration.php';
   // include('header.php'); 
	
    $page="list.php";   

?>
<?php 
    $mysqli = NEW MySQLi('localhost','root','','abcd_db');
    //$resultset = $mysqli->query("SELECT DISTINCT topic FROM topics ORDER BY topic ASC");   
?>
<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">

<link href="css/form.css" rel="stylesheet">
<style>#title {text-align: center; color: darkgoldenrod;}</style>
<div class="container">
    <!--Check the CeremonyCreated and if Failed, display the error message-->
    <?php
    if(isset($_GET['createDish'])){
        if($_GET["createDish"] == "fileRealFailed"){
            echo '<br><h3 align="center" class="bg-danger">FAILURE - Your image is not real, Please Try Again!</h3>';
        }
    }
    if(isset($_GET['createDish'])){
        if($_GET["createDish"] == "answerFailed"){
            echo '<br><h3 align="center" class="bg-danger">FAILURE - Your answer was not one of the choices, Please Try Again!</h3>';
        }
    }
    if(isset($_GET['createDish'])){
        if($_GET["createDish"] == "fileTypeFailed"){
            echo '<br><h3 align="center" class="bg-danger">FAILURE - Your image is not a valid image type (jpg,jpeg,png,gif), Please Try Again!</h3>';
        }
    }
    if(isset($_GET['createDish'])){
        if($_GET["createDish"] == "fileExistFailed"){
            echo '<br><h3 align="center" class="bg-danger">FAILURE - There is already a puzzle using that image, Please Try Again!</h3>';
        }
    }
  
    ?>
    <form action="createTheUser.php" method="POST" enctype="multipart/form-data">
        <br>
        <h3 id="title">Create User</h3> <br>
        
        <table>
            <tr>
                <td style="width:100px">First Name: </td>
                <td><input type="text"  name="first_name" maxlength="50" size="50" required title="Please enter the first name."></td>
            </tr>
            <tr>
                <td style="width:100px">Last Name: </td>
                <td><input type="text"  name="last_name" maxlength="50" size="50" required title="Please enter the last name."></td>
            </tr>
            <tr>
                <td style="width:100px">Email: </td>
                <td><input type="text"  name="email" maxlength="50" size="50" required title="Please enter the email."></td>
            </tr>
			<tr>
                <td style="width:100px">Role: </td>
                <td><input type="text"  name="role" maxlength="50" size="50" required title="Please enter the role."></td>
            </tr>
            <tr>
                <td style="width:100px">Password: </td>
                <td><input type="text"  name="hash" maxlength="50" size="50" required title="Please create a password."></td>
            </tr>
		
        </table>

        <br><br>
        <div align="center" class="text-left">
            <button type="submit" name="submit" class="btn btn-primary btn-md align-items-center">Create User</button>
        </div>
        <br> <br>

    </form>
</div>

