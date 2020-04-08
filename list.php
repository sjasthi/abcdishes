<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script>
    function updateValue(element,column,id){
        var value = element.innerText
        $.ajax({
            url:'editableList.php',
            type: 'post',
            data:{
                value: value,
                column: column,
                id: id
            },
            success:function(php_result){
				console.log(php_result);
				<!-- Add show/hide column -->
				$('.showHideColumn').on('click', function () {
				var tableColumn = ceremoniesTable.column($(this).attr('data-columnindex'));
					tableColumn.visible(!tableColumn.visible());
				});
			<!-- Add show/hide column -->
            }
            
        })
    }
</script> 

<!-- Add show/hide column -->
<style> 
	.ShowHideColumn {
			cursor: pointer;
			color:blue;
	}

</style> 
<!-- Add show/hide column -->
<?php
  $nav_selected = "LIST";
  $left_buttons = "NO";
  $left_selected = "";
  
require 'functions.php';
require 'db_configuration.php';

$query = "SELECT * FROM dishes";
//list
$GLOBALS['data'] = mysqli_query($db, $query);
// $GLOBALS['ID'] = mysqli_query($db, $query);
// $GLOBALS['Name'] = mysqli_query($db, $query);
// $GLOBALS['Type'] = mysqli_query($db, $query);
// $GLOBALS['State'] = mysqli_query($db, $query);
// $GLOBALS['Country'] = mysqli_query($db, $query);
// $GLOBALS['Description'] = mysqli_query($db, $query);
// $GLOBALS['Recipe_links'] = mysqli_query($db, $query);
// $GLOBALS['Video_links'] = mysqli_query($db, $query);
// $GLOBALS['Status'] = mysqli_query($db, $query);
// $GLOBALS['Notes'] = mysqli_query($db, $query);
// $GLOBALS['Image'] = mysqli_query($db, $query);
  include("./nav.php");
  
?>

<?php include("./footer.php"); ?>

<?php $page_title = 'Dishes list'; ?>
<?php 
    $page="list.php";
    //verifyLogin($page);
?>

<link rel="stylesheet" href="css/mainStyleSheet.css" type="text/css">

<style>
    #title {
        text-align: center;
        color: darkgoldenrod;
    }
    thead input {
        width: 100%;
    }
    .thumbnailSize{
        height: 100px;
        width: 100px;
        transition:transform 0.25s ease;
    }
    .thumbnailSize:hover {
        -webkit-transform:scale(3.5);
        transform:scale(3.5);
    }
</style>

<!-- Page Content -->
<br><br>
<div class="container-fluid">
<?php
        if(isset($_GET['createDishes'])){
            if($_GET["createDishes"] == "Success"){
                echo '<br><h3>Success! Your dish has been added!</h3>';
            }
        }

        if(isset($_GET['dishUpdated'])){
            if($_GET["dishUpdated"] == "Success"){
                echo '<br><h3>Success! Your dish has been modified!</h3>';
            }
        }

        if(isset($_GET['dishDeleted'])){
            if($_GET["dishDeleted"] == "Success"){
                echo '<br><h3>Success! Your dish has been deleted!</h3>';
            }
        }

    ?>
   
   
    <h2 id="title">Dishes List</h2><br>    
    <div id="customerTableView">
	
        <button><a class="btn btn-sm" href="createDish.php">Create a Dish</a></button>
        <table class="display" id="ceremoniesTable" style="width:100%">
	
            <div class="table responsive">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Names</th>
                    <th>Type</th>
                    <th>State</th>
                    <th>Country</th>
                    <th>Description</th>
                    <th>Recipe links</th>
                    <th>Video links</th>                
                    <th>Status</th>
                    <th>Notes</th>
                    <th>Image</th>
                    <th>Modify</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
				
					<!-- Add show/hide column -->	
	<div style="padding:5px; padding-left:0px">
		<b>Show/Hide Columns:  </b>
		<a class="showHideColumn" data-columnindex="0">ID</a> -
		<a class="showHideColumn" data-columnindex="1">Names</a> -
		<a class="showHideColumn" data-columnindex="2">Type</a> -
		<a class="showHideColumn" data-columnindex="3">State</a> -
		<a class="showHideColumn" data-columnindex="4">Country</a> -
		<a class="showHideColumn" data-columnindex="5">Description</a> -
		<a class="showHideColumn" data-columnindex="6">Recipe links</a> -
		<a class="showHideColumn" data-columnindex="7">Video links</a> -
		<a class="showHideColumn" data-columnindex="8">Status</a> -
		<a class="showHideColumn" data-columnindex="9">Notes</a> -
		<a class="showHideColumn" data-columnindex="10">Image</a>
	</div>
	<!-- Add show/hide column -->	

                <?php
                while($row = $data->fetch_assoc()) {
                    $ID = $row["ID"];
                    $Name = $row["Name"];
                    $Type = $row["Type"];
                    $State = $row["State"];
                    $Country = $row["Country"];
                    $Description = $row["Description"];
                    $Recipe_links = $row["Recipe_links"];
                    $Video_links = $row["Video_links"];
                    $Status = $row["Status"];
                    $Notes = $row["Notes"];
                    $Image = $row["Image"];
                ?>

                <tr>
                    <td><?php echo $ID; ?></td>
                    <td><div contenteditable="true" onBlur="updateValue(this,'Name','<?php echo $ID; ?>')"><?php echo $Name; ?></div></span> </td>
                    <td><div contenteditable="true" onBlur="updateValue(this,'Type','<?php echo $ID; ?>')"><?php echo $Type; ?></div></span> </td>
                    <td><div contenteditable="true" onBlur="updateValue(this,'State','<?php echo $ID; ?>')"><?php echo $State; ?></div></span> </td>
                    <td><div contenteditable="true" onBlur="updateValue(this,'Country','<?php echo $ID; ?>')"><?php echo $Country; ?></div></span> </td>
                    <td><div contenteditable="true" onBlur="updateValue(this,'Description','<?php echo $ID; ?>')"><?php echo $Description; ?></div></span> </td>
                    <td><div contenteditable="true" onBlur="updateValue(this,'Recipe_links','<?php echo $ID; ?>')"><?php echo $Recipe_links; ?></div></span> </td>
                    <td><div contenteditable="true" onBlur="updateValue(this,'Video_links','<?php echo $ID; ?>')"><?php echo $Video_links; ?></div></span> </td>
                    <td><div contenteditable="true" onBlur="updateValue(this,'Status','<?php echo $ID; ?>')"><?php echo $Status; ?></div></span> </td>
                    <td><div contenteditable="true" onBlur="updateValue(this,'Name','<?php echo $ID; ?>')"><?php echo $Name; ?></div></span> </td>
                    <?php echo '<td><img src="images/'.$row["Image"].'" style="width:100px;height:120px;">' ?>
                    <?php echo '<td><a class="btn btn-warning btn-sm" href="modifyDish.php?id='.$row["ID"].'">Modify</a></td>' ?>
                    <?php echo '<td><a class="btn btn-danger btn-sm" href="deleteDish.php?id='.$row["ID"].'">Delete</a></td>' ?>
                </tr>

                <?php     
                }//end while
                ?>

                </tbody>
            </div>
        </table>
    </div>
</div>

<!-- /.container -->
<!-- Footer -->
<footer class="page-footer text-center">
   
</footer>

<!--JQuery-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 

<!--Data Table-->
<script type="text/javascript" charset="utf8"
        src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript" charset="utf8"
        src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>

<script type="text/javascript" language="javascript">
    $(document).ready( function () {
        
        $('#ceremoniesTable').DataTable( {
            dom: 'lfrtBip',
            buttons: [
                'copy', 'excel', 'csv', 'pdf'
            ] }
        );

        $('#ceremoniesTable thead tr').clone(true).appendTo( '#ceremoniesTable thead' );
        $('#ceremoniesTable thead tr:eq(1) th').each( function (i) {
            var title = $(this).text();
            $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
    
            $( 'input', this ).on( 'keyup change', function () {
                if ( table.column(i).search() !== this.value ) {
                    table
                        .column(i)
                        .search( this.value )
                        .draw();
                }
            } );
        } );
    
        var table = $('#ceremoniesTable').DataTable( {
            orderCellsTop: true,
            fixedHeader: true,
            retrieve: true
        } );
        
    } );
	//add visible coloumn


</script>
</body>
</html>
