
<?php
  $nav_selected = "REPORTS";
  $left_buttons = "YES";
  $left_selected = "Tables";
  include("./nav.php");
?>

<?php
 $con = mysqli_connect("localhost", "root", "", "abcd_db");  
?>
<!DOCTYPE HTML>
<html>
<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">
<head>
 <meta charset="utf-8">
 <title>
 Create Google Charts
 </title>
 <script type="text/javascript" src="https://www.google.com/jsapi"></script>
 <script type="text/javascript">
 google.load("visualization", "1", {packages:["table"]});
 google.setOnLoadCallback(drawChart);
 function drawChart() {
 var data = google.visualization.arrayToDataTable([

 ['Status', 'Count'],
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
 var chart = new google.visualization.Table(document.getElementById("columnchart"));
 chart.draw(data, options);
 }
 </script>
</head>
<body>
 <h3>Status Table</h3>
 <div id="columnchart" style="width: 700px; height: 200px;"></div>
</body>
</html>

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
 google.load("visualization", "1", {packages:["table"]});
 google.setOnLoadCallback(drawChart);
 function drawChart() {
 var data = google.visualization.arrayToDataTable([

 ['Keyword', 'Count'],
 <?php 

 $query = "SELECT Keywords, count(*) as number FROM dishes GROUP BY Keywords";  

 $exec = mysqli_query($con,$query);
 while($row = mysqli_fetch_array($exec)){

 //echo "['".$row['vdate']."',".$row['count']."],";
 echo "['".$row["Keywords"]."', ".$row["number"]."],";  
 }
 ?>
 
 ]);

 var options = {
 title: 'Status'
 };
 var chart = new google.visualization.Table(document.getElementById("columnchart2"));
 chart.draw(data, options);
 }
 </script>
</head>
<body>
 <h3>Keywords Table</h3>
 <div id="columnchart2" style="width: 900px; height: 500px;"></div>
</body>
</html>


<?php include("./footer.php"); ?>