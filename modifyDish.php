
<?php $page_title = 'Modify Dish'; ?>
<?php $page_title = 'ABCDishes > Modify Dish'; ?>
<?php

 // set the current page to one of the main buttons
  $nav_selected = "LIST";

  // make the left menu buttons visible; options: YES, NO
  $left_buttons = "NO";

  // set the left menu button selected; options will change based on the main selection
  $left_selected = "";

  include("./nav.php");
    require 'bin/functions.php';
    require 'db_configuration.php';
   // include('header.php');
    $page="list.php";
    verifyLogin($page);

?>
<div class="container">
<style>#title {text-align: center; color: darkgoldenrod;}</style>
<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">

<?php
include_once 'db_configuration.php';

if (isset($_GET['id'])){

    $id = $_GET['id'];

    $sql = "SELECT * FROM dishes
            WHERE ID = '$id'";

    if (!$result = $db->query($sql)) {
        die ('There was an error running query[' . $connection->error . ']');
    }//end if
}//end if

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {

      if(isset($_GET['modifyQuestion'])){
        if($_GET["modifyQuestion"] == "answerFailed"){
            echo '<br><h3 align="center" class="bg-danger">FAILURE - Your answer was not one of the choices, Please Try Again!</h3>';
        }
      }
      if(isset($_GET['modifyQuestion'])){
        if($_GET["modifyQuestion"] == "fileTypeFailed"){
            echo '<br><h3 align="center" class="bg-danger">FAILURE - Your image is not a valid image type (jpg,jpeg,png,gif), Please Try Again!</h3>';
        }
      }
      if(isset($_GET['modifyQuestion'])){
        if($_GET["modifyQuestion"] == "fileExistFailed"){
            echo '<br><h3 align="center" class="bg-danger">FAILURE - Your image does not exist, Please Try Again!</h3>';
        }
      }

      echo '<h2 id="title">Modify Dish</h2><br>';
      ?>

      <form action="modifyTheDish.php" method="POST" enctype="multipart/form-data">
      <br>
      <h3><?php echo $row["Name"]; ?></h3> <br>

      <div>
        <label for="id">Id</label>
        <input type="text" class="form-control" name="ID" value=<?php echo $row["ID"]; ?>  maxlength="5" style=width:400px readonly><br>
      </div>

      <div>
        <label for="category">Name</label>
        <input type="text" class="form-control" name="Name" value=<?php echo $row["Name"]; ?>  maxlength="255" style=width:400px required><br>
      </div>

      <div>
        <label for="level">Type</label>
        <input type="text" class="form-control" name="Type" value=<?php echo $row["Type"]; ?>  maxlength="255" style=width:400px required><br>
      </div>

      <div>
        <label for="facilitator">State</label>
        <input type="text" class="form-control" name="State" value=<?php echo $row["State"]; ?>  maxlength="255" style=width:400px required><br>
      </div>

      <div>
        <label for="description">Country</label>
        <input type="text" class="form-control" name="Country" value=<?php echo $row["Country"]; ?>  maxlength="255" style=width:400px required><br>
        
      </div>
     
      <div>
      <label for="description">Description</label>
      
      <textarea class="form-control" name="Description" maxlength="10000" style=width:400px required><?php echo $row["Description"]; ?></textarea><br>
   

      </div>

      <div>
      <label for="description">Keywords</label>
      <input type="text" class="form-control" name="Keywords" value=<?php echo $row["Keywords"]; ?>  maxlength="255" style=width:400px required><br>
      </div>
      
      <div>
        <label for="description">Recipe_links</label>
        <input type="text" class="form-control" name="Recipe_links" value=<?php echo $row["Recipe_links"]; ?>  maxlength="255" style=width:400px required><br>
      </div>

      <div>
        <label for="description">Video_links</label>
        <input type="text" class="form-control" name="Video_links" value=<?php echo $row["Video_links"]; ?>  maxlength="255" style=width:400px required><br>
      </div>

      <div>
        <label for="description">Status</label>
        <input type="text" class="form-control" name="Status" value=<?php echo $row["Status"]; ?>  maxlength="255" style=width:400px required><br>
      </div>

      <div>
        <label for="description">Notes</label>
        <input type="text" class="form-control" name="Notes" value=<?php echo $row["Notes"]; ?>  maxlength="255" style=width:400px required><br>
      </div>

      <div class="form-group col-md-4">
      <label for="cadence">New Image</label>
      <input type="file" name="Image" id="Image" maxlength="255">
      </div>
      <input type="hidden" class="form-control" name="Image" value=<?php echo $row["Image"]; ?> maxlength="255" required>

  

      

      <br>
      <div class="text-left">
          <button type="submit" name="submit" class="btn btn-primary btn-md align-items-center">Modify Dish</button>
      </div>
      <br> <br>

      </form>
      <?php
    }//end while
}//end if
else {
    echo "0 results";
}//end else

?>

</div>
