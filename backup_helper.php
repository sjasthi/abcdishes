<?php

  // set the current page to one of the main buttons
  $nav_selected = "ADMIN";

  // make the left menu buttons visible; options: YES, NO
  $admin_left_buttons = "YES";

  // set the left menu button selected; options will change based on the main selection
  $admin_left_selected = "USERS";
  include("./nav.php");
?>

<?php
require 'bin/functions.php';

require 'db_configuration.php';



// Database configuration
$host = "localhost";
$username = "root";
$password = "";
$database_name = "abcd_db";

// Get connection object and set the charset
$conn = mysqli_connect($host, $username, $password, $database_name);
$conn->set_charset("utf8");


// Get All Table Names From the Database
$tables = array();
$sql = "SHOW TABLES";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_row($result)) {
    $tables[] = $row[0];
}

$sqlScript = "";
foreach ($tables as $table) {
    
    // Prepare SQLscript for creating table structure
    $query = "SHOW CREATE TABLE $table";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_row($result);
    
    $sqlScript .= "\n\n" . $row[1] . ";\n\n";
    
    
    $query = "SELECT * FROM $table";
    $result = mysqli_query($conn, $query);
    
    $columnCount = mysqli_num_fields($result);
    
    // Prepare SQLscript for dumping data for each table
    for ($i = 0; $i < $columnCount; $i ++) {
        while ($row = mysqli_fetch_row($result)) {
            $sqlScript .= "INSERT INTO $table VALUES(";
            for ($j = 0; $j < $columnCount; $j ++) {
                $row[$j] = $row[$j];
                
                if (isset($row[$j])) {
                    $sqlScript .= '"' . $row[$j] . '"';
                } else {
                    $sqlScript .= '""';
                }
                if ($j < ($columnCount - 1)) {
                    $sqlScript .= ',';
                }
            }
            $sqlScript .= ");\n";
        }
    }
    
    $sqlScript .= "\n"; 
}

if(!empty($sqlScript))
{
    ?>
        <p style="color:green">Success! Download starting soon.</p>

    <?php
    echo "<script>setTimeout(\"location.href = 'backup.php';\",1500);</script>";
}else{
    ?>
        <p style="color:green">Something went wrong.</p>

    <?php
    
}
?>



<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">