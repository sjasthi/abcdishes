
<?php $page_title = 'ABCDishes > Delete dish'; ?>
<?php
    require 'bin/functions.php';
    require 'db_configuration.php';
  
  $nav_selected = "LIST";
  $left_buttons = "NO";
  $left_selected = "Bar Charts";

  include("./nav.php");
  

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
            WHERE id = '$id'";

    if (!$result = $db->query($sql)) {
        die ('There was an error running query[' . $connection->error . ']');
    }//end if
}//end if

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo '<form action="deleteTheDish.php" method="POST">
    <br>
    <h3 id="title">Delete Dish</h3><br>
    <h2>'.$row["ID"].' - '.$row["Name"].' </h2> <br>

    <div class="form-group col-md-4">
      <label for="id">Id</label>
      <input type="text" class="form-control" name="ID" value="'.$row["ID"].'"  maxlength="5" readonly>
    </div>

    <div class="form-group col-md-8">
      <label for="name">Name</label>
      <input type="text" class="form-control" name="Name" value="'.$row["Name"].'"  maxlength="255" readonly>
    </div>

    <div class="form-group col-md-4">
      <label for="category">Type</label>
      <input type="text" class="form-control" name="Type" value="'.$row["Type"].'"  maxlength="255" readonly>
    </div>

    <div class="form-group col-md-4">
      <label for="level">State</label>
      <input type="text" class="form-control" name="State" value="'.$row["State"].'"  maxlength="255" readonly>
    </div>

    <div class="form-group col-md-4">
      <label for="facilitator">Country</label>
      <input type="text" class="form-control" name="choice_2" value="'.$row["Country"].'"  maxlength="255" readonly>
    </div>

    <div class="form-group col-md-12">
      <label for="description">Description</label>
      <input type="text" class="form-control" name="Description" value="'.$row["Description"].'"  maxlength="255" readonly>
    </div>

    <div class="form-group col-md-12">
    <label for="description">Keywords</label>
    <input type="text" class="form-control" name="Keywords" value="'.$row["Keywords"].'"  maxlength="255" readonly>
  </div>

    <div class="form-group col-md-12">
    <label for="description">Recipe Link</label>
    <input type="text" class="form-control" name="Recipe_links" value="'.$row["Recipe_links"].'"  maxlength="255" readonly>
  </div>

  <div class="form-group col-md-12">
  <label for="description">Video Link</label>
  <input type="text" class="form-control" name="Video_links" value="'.$row["Video_links"].'"  maxlength="255" readonly>
</div>

<div class="form-group col-md-12">
<label for="description">Status</label>
<input type="text" class="form-control" name="Status" value="'.$row["Status"].'"  maxlength="255" readonly>
</div>

    <div class="form-group col-md-12">
    <label for="description">Notes</label>
    <input type="text" class="form-control" name="Notes" value="'.$row["Notes"].'"  maxlength="255" readonly>
  </div>

  <div class="form-group col-md-4">
  <label for="cadence">Image</label>
  <input type="text" class="form-control" name="Image" value="'.$row["Image"].'"  maxlength="255" readonly>
  </div>

    <br>
    <div class="text-left">
        <button type="submit" name="submit" class="btn btn-primary btn-md align-items-center">Confirm Delete Dish</button>
    </div>
    <br> <br>

    </form>';

    }//end while
}//end if
else {
    echo "0 results";
}//end else

?>

</div>
