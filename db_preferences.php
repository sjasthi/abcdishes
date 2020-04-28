<!DOCTYPE html>
<style>#title {text-align: center;color: darkgoldenrod;}</style>
<html>
    <head>
        <title>ABC Dishes</title>
        <style>
        input {
            text-align: center;
        }
        </style>
    </head>
    <body>
    <br>
    <h3 id="title">Update Preferences</h3><br>
    </body>
    <div class="container">
      
      
 
        <form action="modifyThePreferences.php" method="POST">
        <table style="width:500px">
        <tr>
            <th style="width:200px"></th>
            <th>Current Value</th> 
            <th>Update Value</th>
        </tr>
        <tr>
            <td style="width:200px">Number of Dishes Per Row:</td>
            <td><input disabled type="int" maxlength="2" size="10" value="<?php echo $rows; ?>" title="Current value"></td> 
            <td><input required type="int" name="new_rows" maxlength="4" size="10" title="Enter a number"></td>
        </tr>
        <tr>
            <td style="width200px">Number of Dishes to show:</td>
            <td><input disabled type="int" maxlength="2" size="10" value="<?php echo $dish; ?>" title="Current value"></td> 
            <td><input required type="int" name="new_dishes" maxlength="4" size="10" title="Enter a number"></td>
        </tr>
        <tr>
            <td style="width200px">Number of Characters to show:</td>
            <td><input disabled type="int" maxlength="2" size="10" value="<?php echo $length; ?>" title="Current value"></td> 
            <td><input required type="int" name="new_length" maxlength="4" size="10" title="Enter a number"></td>
        </tr>

        <!-- <tr>
            <td style="width200px">Name of favorite Dishes:</td>
            <td><input disabled type="text" maxlength="20" size="10" value="<?php echo $favorite; ?>" title="Current value"></td> 
            <td><select type="text" name="new_favorite" title="Enter fav dish">

            <?php
                //loop to get all choices into the drop down
                for($c=0;$c<$count_dishes;$c++){

                    $dish = $dish_names[$c]['name'];
                    echo "
                        <option value='$dish'>$dish</option>
                    ";
                }
            ?>
            
            </select></td>
            
        </tr>
        
        
    


        <tr>
            <td style="width200px">Default view for home page:</td>
            <td><input disabled type="text" maxlength="20" size="10" value="<?php echo $defaultView; ?>" title="Current value"></td> 
            

            <td><select type="text" name="new_defaultView" title="Enter view type">
                <option value="Grid">Grid</option>
                <option value="List">List</option>
                <option value="Carousal">Carousal</option>
            
            </select></td>
        </tr>


        <tr>
            <td style="width200px">Image Height In Grid:</td>
            <td><input disabled type="int" maxlength="4" size="10" value="<?php echo $gridHeight; ?>" title="Current value"></td> 
            <td><input required type="int" name="new_HeightGrid" maxlength="4" size="10" title="Enter a number"></td>
        </tr>


        <tr>
            <td style="width200px">Image Width In Grid:</td>
            <td><input disabled type="int" maxlength="4" size="10" value="<?php echo $gridWidth; ?>" title="Current value"></td> 
            <td><input required type="int" name="new_WidthGrid" maxlength="4" size="10" title="Enter a number"></td>
        </tr>



        <tr>
            <td style="width200px">Image Hieght in Carousal:</td>
            <td><input disabled type="int" maxlength="4" size="10" value="<?php echo $carHeight; ?>" title="Current value"></td> 
            <td><input required type="int" name="new_HeightCar" maxlength="4" size="10" title="Enter a number"></td>
        </tr>

        <tr>
            <td style="width200px">Image Width in Carousal:</td>
            <td><input disabled type="int" maxlength="4" size="10" value="<?php echo $carWidth; ?>" title="Current value"></td> 
            <td><input required type="int" name="new_WidthCar" maxlength="4" size="10" title="Enter a number"></td>
        </tr>

 -->


        </table><br>
        <button type="submit" name="submit" class="btn btn-primary btn-md align-items-center">Modify Preferences</button>
        <button href="index.php" class="btn btn-primary btn-md align-items-center">Back to Homepage</button>
        </form>
    </div>
    </body>
</html>