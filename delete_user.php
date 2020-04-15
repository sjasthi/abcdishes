
<?php
    require 'bin/functions.php';
    require 'db_configuration.php';
  
  $nav_selected = "ADMIN";
  $left_buttons = "NO";
  $left_selected = "";

  include("./nav.php");
  

    $page="list_users.php";

?>
<div class="container">
<style>#title {text-align: center; color: darkgoldenrod;}</style>
<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">

<?php
include_once 'db_configuration.php';

if (isset($_GET['id'])){

    $id = $_GET['id'];

    $sql = "SELECT * FROM users
            WHERE id = '$id'";

    if (!$result = $db->query($sql)) {
        die ('There was an error running query[' . $connection->error . ']');
    }//end if
}//end if

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo '<form action="deleteTheUser.php" method="POST">
    <br>
    <h3 id="title">Delete User</h3><br>
    <h2>'.$row["first_name"].' '.$row["last_name"].' </h2> <br>

    <div class="form-group col-md-4">
      <label for="id">Id</label>
      <input type="text" class="form-control" name="ID" value="'.$row["id"].'"  maxlength="5" readonly>
    </div>

    <div class="form-group col-md-8">
      <label for="name">First Name</label>
      <input type="text" class="form-control" name="Name" value="'.$row["first_name"].'"  maxlength="255" readonly>
    </div>

    <div class="form-group col-md-4">
      <label for="category">Last Name</label>
      <input type="text" class="form-control" name="Type" value="'.$row["last_name"].'"  maxlength="255" readonly>
    </div>

    <div class="form-group col-md-4">
      <label for="level">Email</label>
      <input type="text" class="form-control" name="State" value="'.$row["email"].'"  maxlength="255" readonly>
    </div>

    <div class="form-group col-md-4">
      <label for="facilitator">Role</label>
      <input type="text" class="form-control" name="choice_2" value="'.$row["role"].'"  maxlength="255" readonly>
    </div>


    <br>
    <div class="text-left">
        <button type="submit" name="submit" class="btn btn-primary btn-md align-items-center">Confirm Delete User</button>
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
