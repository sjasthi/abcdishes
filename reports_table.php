
<?php
  $nav_selected = "SCANNER";
  $left_buttons = "YES";
  $left_selected = "Tables";

  include("./nav.php");

 $con = mysqli_connect("localhost", "root", "", "abcdishes_db");  


 $queryProposed = "SELECT Status, count(*) as number FROM dishes WHERE Status = 'Proposed'";  
 $queryInReview = "SELECT Status, count(*) as number FROM dishes WHERE Status = 'In Review'";  
 $queryApproved = "SELECT Status, count(*) as number FROM dishes WHERE Status = 'Approved'";  
 $queryRejected = "SELECT Status, count(*) as number FROM dishes WHERE Status = 'Rejected'";  




  ?>
<header>Status</header>
<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">

  
    
<table border="1">
  <tr>
    <th>Proposed </th>
    <th>In Review </th>
    <th>Approved </th>
    <th>Rejected </th>

  </tr>
  <tr>
    <td>
    <?php
    $row = mysqli_fetch_array(mysqli_query($con,$queryProposed));
    echo $row["number"];  
    ?>
    </td>
    <td>
    <?php
    $row = mysqli_fetch_array(mysqli_query($con,$queryInReview));
    echo $row["number"];  
    ?>
    </td>
    <td>
    <?php
    $row = mysqli_fetch_array(mysqli_query($con,$queryApproved));
    echo $row["number"];  
    ?>
    </td>
    <td>
    <?php
    $row = mysqli_fetch_array(mysqli_query($con,$queryRejected));
    echo $row["number"];  
    ?>
    </td>
  </tr>
</table>

<header>Keywords</header>
<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">

  
    
<table border="1">
  <tr>
    <th>keyword_1 </th>
    <th>keyword_2 </th>
    <th>keyword_3 </th>
    <th>keyword_4 </th>

  </tr>
  <tr>
    <td>
    <?php
    $row = mysqli_fetch_array(mysqli_query($con,$queryProposed));
    echo $row["number"];  
    ?>
    </td>
    <td>
    <?php
    $row = mysqli_fetch_array(mysqli_query($con,$queryInReview));
    echo $row["number"];  
    ?>
    </td>
    <td>
    <?php
    $row = mysqli_fetch_array(mysqli_query($con,$queryApproved));
    echo $row["number"];  
    ?>
    </td>
    <td>
    <?php
    $row = mysqli_fetch_array(mysqli_query($con,$queryRejected));
    echo $row["number"];  
    ?>
    </td>
  </tr>
</table>


<?php include("./footer.php"); ?>