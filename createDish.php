

<?php $page_title = 'Puzzles > Create Puzzle'; ?>
<?php 

 // set the current page to one of the main buttons
  $nav_selected = "HOME";

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
    <form action="createTheDish.php" method="POST" enctype="multipart/form-data">
        <br>
        <h3 id="title">Create A Dish</h3> <br>
        
        <table>
            <!-- names -->
            <tr>
                <td style="width:100px">Names:</td>
                <td><input type="text"  name="Names" maxlength="50" size="50" required title="Please enter the dish name"></td>
            </tr>
            <!--  Dish Type -->
            <tr>
                <td style="width:100px">Type:</td>
                <td><input type="text"  name="Type" maxlength="50" size="50" required title="Please enter the type"></td>
            </tr>
            <!-- Book name -->
            <tr>
                <td style="width:100px">State:</td>
                <td><input type="text"  name="State" maxlength="50" size="50" required title="Please enter the name of the State."></td>
            </tr>
            <!-- Country -->
			<tr>
                <td style="width:100px">Country:</td>
                <td><input type="text"  name="Country" maxlength="50" size="50" required title="Please enter the name of the Country."></td>
            </tr>
			<!-- Description -->
			<tr>
                <td style="width:100px">Description:</td>
                <td><input type="text"  name="Description" maxlength="50" size="50" required title="Please enter the name of the Description."></td>
            </tr>
			<!-- Recipe_links -->
			<tr>
                <td style="width:100px">Recipe_links:</td>
                <td><input type="text"  name="Recipe_links" maxlength="50" size="50" required title="Please enter the recipe link."></td>
            </tr>
            <!-- Video_links -->
			<tr>
                <td style="width:100px">Video_links:</td>
                <td><input type="text"  name="Video_links" maxlength="50" size="50" required title="Please enter the video link."></td>
            </tr>

            
            <!-- Status -->
            <!-- <tr>
            <td style="width:100px">Status:</td>
                <td>
                <input list="status" name="myStatus" maxlength="50" size="50" paddin: 100px />
                <datalist id="status">
                <option value="Proposed">
                <option value="Approved">
                <option value="Reviewed">
                </datalist>
                </td>
            </tr> -->
            <tr>
                <td style="width:100px">Status:</td>
                <td><input name="Status" maxlength="60" height="200" size="50" required title="Please enter the status."></td>
            </tr>
			 <!-- Notes -->
            <tr>
                <td style="width:100px">Notes:</td>
                <td><input name="Notes" maxlength="60" height="200" size="50" required title="Please enter notes about the Notes."></td>
            </tr>
             <!-- Image -->
            <tr>
                <td style="width:100px">Image:</td>
                <td><input type="file" name="Image" id="Image" maxlength="50" size="50" title="Enter the image"></td>
            </tr>
			
        </table>

        <br><br>
        <div align="center" class="text-left">
            <button type="submit" name="submit" class="btn btn-primary btn-md align-items-center">Create Dish</button>
        </div>
        <br> <br>

    </form>
</div>

