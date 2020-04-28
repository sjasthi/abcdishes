<?php
  $nav_selected = "REPORTS";
  $left_buttons = "YES";
  $left_selected = "Pie Charts";

  include("./nav.php");
  ?>

 <?php  
 $connect = mysqli_connect("localhost", "root", "", "abcd_db");  
 $query = "SELECT Status, count(*) as number FROM dishes GROUP BY Status";  
 $result = mysqli_query($connect, $query);  
 ?>  
 <!DOCTYPE html>  
 <html>  
 <link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">
      <head>  
           <title>Summary of the Status</title>  
           <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>  
           <script type="text/javascript">  
           google.charts.load('current', {'packages':['corechart']});  
           google.charts.setOnLoadCallback(drawChart);  
           function drawChart()  
           {  
                var data = google.visualization.arrayToDataTable([  
                          ['Status', 'Number'],  
                          <?php  
                          while($row = mysqli_fetch_array($result))  
                          {  
                               echo "['".$row["Status"]."', ".$row["number"]."],";  
                          }  
                          ?>  
                     ]);  
                var options = {  
                      title: 'Percentage of approved  ',  
                      //is3D:true,  
                      //pieHole: 0.4  
                     };  
                var chart = new google.visualization.PieChart(document.getElementById('piechart'));  
                chart.draw(data, options);  
           }  
           </script>  
      </head>  
      <body>  
           <br /><br />  
           <div style="width:900px;">  
                <h3 align="center">Summary of the Status</h3>  
                <br />  
                <div id="piechart" style="width: 900px; height: 500px;"></div>  
           </div>  
      </body>  
 </html>  

 <div>
 <?php  
 $connect = mysqli_connect("localhost", "root", "", "abcd_db");  
 $query = "SELECT Keywords, count(*) as number FROM dishes GROUP BY Keywords";  
 $result = mysqli_query($connect, $query);  
 ?>  
 <!DOCTYPE html>  
 <html>  
      <head>  
           <title>Summary of the Keywords</title>  
           <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>  
           <script type="text/javascript">  
           google.charts.load('current', {'packages':['corechart']});  
           google.charts.setOnLoadCallback(drawChart);  
           function drawChart()  
           {  
                var data = google.visualization.arrayToDataTable([  
                          ['Keywords', 'Number'],  
                          <?php  
                          while($row = mysqli_fetch_array($result))  
                          {  
                               echo "['".$row["Keywords"]."', ".$row["number"]."],";  
                          }  
                          ?>  
                     ]);  
                var options = {  
                      title: 'Percentage of keywords  ',  
                      //is3D:true,  
                      //pieHole: 0.4  
                     };  
                var chart = new google.visualization.PieChart(document.getElementById('piechart2'));  
                chart.draw(data, options);  
           }  
           </script>  
      </head>  
      <body>  
           <br /><br />  
           <div style="width:900px;">  
                <h3 align="center">Summary of the Keywords</h3>  
                <br />  
                <div id="piechart2" style="width: 900px; height: 500px;"></div>  
           </div>  
      </body>  
 </html>  
 </div>

 <div>
 <?php  
 $connect = mysqli_connect("localhost", "root", "", "abcd_db");  
 $query = "SELECT Type, count(*) as number FROM dishes GROUP BY Type";  
 $result = mysqli_query($connect, $query);  
 ?>  
 <!DOCTYPE html>  
 <html>  
 <link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">
      <head>  
           <title>Summary of the Type</title>  
           <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>  
           <script type="text/javascript">  
           google.charts.load('current', {'packages':['corechart']});  
           google.charts.setOnLoadCallback(drawChart);  
           function drawChart()  
           {  
                var data = google.visualization.arrayToDataTable([  
                          ['Type', 'Number'],  
                          <?php  
                          while($row = mysqli_fetch_array($result))  
                          {  
                               echo "['".$row["Type"]."', ".$row["number"]."],";  
                          }  
                          ?>  
                     ]);  
                var options = {  
                      title: 'Percentage of types  ',  
                      //is3D:true,  
                      //pieHole: 0.4  
                     };  
                var chart = new google.visualization.PieChart(document.getElementById('piechart3'));  
                chart.draw(data, options);  
           }  
           </script>  
      </head>  
      <body>  
           <br /><br />  
           <div style="width:900px;">  
                <h3 align="center">Summary of the Type</h3>  
                <br />  
                <div id="piechart3" style="width: 900px; height: 500px;"></div>  
           </div>  
      </body>  
 </html>  
 </div>
 

 <?php include("./footer.php"); ?>
