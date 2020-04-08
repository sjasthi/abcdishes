<?php
	
  $nav_selected = "COMPILE";
  $left_buttons = "NO";
  $left_selected = "";

  include("./nav.php");
?>
<?php include("./footer.php"); ?>
<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">

<?php

require 'db_configuration.php';



if(isset($_POST["name"])){
$resultFromCompile = $_POST["name"];
$query = "SELECT * FROM dishes WHERE
ID LIKE '%".$resultFromCompile."%' OR
Name LIKE '%".$resultFromCompile."%' OR
Type LIKE '%".$resultFromCompile."%' OR
State LIKE '%".$resultFromCompile."%' OR
Country LIKE '%".$resultFromCompile."%' OR
Description LIKE '%".$resultFromCompile."%' OR
Recipe_links LIKE '%".$resultFromCompile."%' OR
Video_links LIKE '%".$resultFromCompile."%' OR
Status LIKE '%".$resultFromCompile."%' OR
Notes LIKE '%".$resultFromCompile."%' OR
Image LIKE '%".$resultFromCompile."%'";







//list
$GLOBALS['data'] = mysqli_query($db, $query);

if(isset($_POST["compile"])) {  //when search is clicked this code runs

  
          while($row = $data->fetch_assoc()) {
            echo '<h2 id="title">Dish Details</h2><br>';
            echo '<form action="modifyTheDish.php" method="POST" enctype="multipart/form-data">
            <br>
            <h3>'.$row["Name"].' </h3> <br>
            
            <div>
             <img src="images/'.$row["Image"].'" style="width:200px;height:200px;">
             <br>
          </div>
      
            <div>
            <label for="id">Dish Id Number: </label> '.$row["ID"].'
            
          </div>
      
      
          <div>
            <label for="level">Type: </label> '.$row["Type"].'
            
          </div>
      
      
          <div>
            <label for="facilitator">State: </label> '.$row["State"].' 
            </div>
      
          
         
          <div>
          <label for="description">Description: </label> '.$row["Description"].'
          
          </div>
          
          <div>
            <label for="description">Recipe_links: </label> '.$row["Recipe_links"].'
          
          </div>
      
          <div>
            <label for="description">Video_links: </label> '.$row["Video_links"].'
           
          </div>
      
      
          <div>
            <label for="description">Notes: </label> '.$row["Notes"].'
            
          </div>
      
          
          <p style="page-break-before: always">

      
            </form>';
            
         
        
          }//end while
}//end if statement that checks isset
          ?>

          </tbody>
      </div>
  </table>
</div>

<?php     
}//end of search if statement
?>