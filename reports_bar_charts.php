<?php
  $nav_selected = "SCANNER";
  $left_buttons = "YES";
  $left_selected = "Bar Charts";

  include("./nav.php");
  ?>
<?php
 $con = mysqli_connect("localhost", "root", "", "abcd_db");  
?>
<!DOCTYPE HTML>
<html>
<head>
 <meta charset="utf-8">
 <title>
 Create Google Charts
 </title>
 <script type="text/javascript" src="https://www.google.com/jsapi"></script>
 <script type="text/javascript">
 google.load("visualization", "1", {packages:["corechart"]});
 google.setOnLoadCallback(drawChart);
 function drawChart() {
 var data = google.visualization.arrayToDataTable([

 ['Date', 'Status'],
 <?php 

 $query = "SELECT Status, count(*) as number FROM dishes GROUP BY Status";  

 $exec = mysqli_query($con,$query);
 while($row = mysqli_fetch_array($exec)){

 //echo "['".$row['vdate']."',".$row['count']."],";
 echo "['".$row["Status"]."', ".$row["number"]."],";  
 }
 ?>
 
 ]);

 var options = {
 title: 'Status'
 };
 var chart = new google.visualization.ColumnChart(document.getElementById("columnchart"));
 chart.draw(data, options);
 }
 </script>
</head>
<body>
 <h3>Bar Chart</h3>
 <div id="columnchart" style="width: 900px; height: 500px;"></div>
</body>
</html>
<?php include("./footer.php"); ?>