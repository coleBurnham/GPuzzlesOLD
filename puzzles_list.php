<?php

require 'bin/functions.php';
require 'db_configuration.php';

$query = "SELECT * FROM gpuzzles";

$GLOBALS['data'] = mysqli_query($db, $query);
// $GLOBALS['topic'] = mysqli_query($db, $query);
// $GLOBALS['question'] = mysqli_query($db, $query);
// $GLOBALS['choice_1'] = mysqli_query($db, $query);
// $GLOBALS['choice_2'] = mysqli_query($db, $query);
// $GLOBALS['choice_3'] = mysqli_query($db, $query);
// $GLOBALS['choice_4'] = mysqli_query($db, $query);
// $GLOBALS['answer'] = mysqli_query($db, $query);
// $GLOBALS['image_name'] = mysqli_query($db, $query);
?>

<?php $page_title = 'Gpuzzles > puzzles'; ?>
<?php include('header.php'); 
    $page="puzzles_list.php";
   // verifyLogin($page);
?>

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
        if(isset($_GET['createpuzzle'])){
            if($_GET["createpuzzle"] == "Success"){
                echo '<br><h3>Success! Your puzzle has been added!</h3>';
            }
        }

        if(isset($_GET['puzzleUpdated'])){
            if($_GET["puzzleUpdated"] == "Success"){
                echo '<br><h3>Success! Your puzzle has been modified!</h3>';
            }
        }

        if(isset($_GET['questionDeleted'])){
            if($_GET["puzzleDeleted"] == "Success"){
                echo '<br><h3>Success! Your puzzle has been deleted!</h3>';
            }
        }

        //if(isset($_GET['createTopic'])){
          //  if($_GET["createTopic"] == "Success"){
            //    echo '<br><h3>Success! Your topic has been added!</h3>';
            //}
       // }
    ?>
   
    <h2 id="title">Puzzle List</h2><br>
    
    <div id="customerTableView">
        <button><a class="btn btn-sm" href="createPuzzle.php">Create a Puzzle</a></button>
        <table class="display" id="ceremoniesTable" style="width:100%">
            <div class="table responsive">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>name</th>
                    <th>creator_name</th>
                    <th>author_name</th>
                    <th>book_name</th>
                    <th>puzzle_image</th>
                    <th>solution_image</th>
                    <th>notes</th>
                </tr>
                </thead>
                <tbody>
                <?php
                // fetch the data from $_GLOBALS
                if ($data->num_rows > 0) {
                    // output data of each row
                    while($row = $data->fetch_assoc()) {
                        echo '<tr>
                                <td>'.$row["id"].'</td>
                                <td>'.$row["name"].' </span> </td>
                                <td>'.$row["creator_name"].'</td>
                                <td>'.$row["author_name"].'</td>
                                <td>'.$row["book_name"].' </span> </td>
                                <td>'.$row["puzzle_image"].'</td>
                                <td>'.$row["solution_image"].'</td>
                                <td>'.$row["notes"].' </span> </td>

                                <td><a class="btn btn-warning btn-sm" href="modifyPuzzle.php?id='.$row["id"].'">Modify</a></td>
                                <td><a class="btn btn-danger btn-sm" href="deletePuzzle.php?id='.$row["id"].'">Delete</a></td>
                                <td><img class="thumbnailSize" src="Images/puzzle_images/' .$row["puzzle_image"]. '" alt="'.$row["puzzle_image"].'"></td>
                            </tr>';
                    }//end while
                }//end if
                else {
                    echo "0 results";
                }//end else
                ?>
                                               <!--
                                <td><img class="thumbnailSize" src="/Images/puzzle_images/' .$row["puzzle_image"]. '" alt="'.$row["puzzle_image"].'"></td>
                                <td><a class="btn btn-warning btn-sm" href="modifyQuestion.php?id='.$row["id"].'">Modify</a></td>
                                <td><a class="btn btn-danger btn-sm" href="deleteQuestion.php?id='.$row["id"].'">Delete</a></td>
								//-->

                </tbody>
            </div>
        </table>
    </div>
</div>

<!-- /.container -->
<!-- Footer -->
<footer class="page-footer text-center">
    <p>Created for ICS 325 Summer Project "Team Alligators"</p>
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

</script>
</body>
</html>
