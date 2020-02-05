<?php 
require 'bin/functions.php';
require 'db_configuration.php';
include('header.php'); 

$query = "SELECT * FROM gpuzzles LIMIT 12";

$GLOBALS['data'] = mysqli_query($db, $query);
?>

<html>
    <head>
        <title>Puzzle Page!</title>
    </head>
    <style>
        .image {
            width: 100px;
            height: 100px;
            padding: 20px 20px 20px 20px;
            transition: transform .2s;
        }
        .image:hover {
            transform: scale(1.2)
        }
        #table_1 {
            border-spacing: 300px 0px;
        }
        #table_2 {
            margin-left: auto;
            margin-right: auto;
        }
        #silc {
            width: 300;
            height: 85;
        }
        #welcome {
            text-align: center;
        }
        #directions {
            text-align: center;
        }
        #title {    
            color: black;        
            text-align: center;
        }
        a:visited, a:link, a:active {
            text-decoration: none;
        }
        #title2 {
        text-align: center;
        color: darkgoldenrod;
        }


    </style>
    <body>
    <?php
        if(isset($_GET['preferencesUpdated'])){
            if($_GET["preferencesUpdated"] == "Success"){
                echo "<br><h3 align=center style='color:green'>Success! The Preferences have been updated!</h3>";
            }
        }
    ?>
    <h1 id = "title2">Welcome to Puzzle Page!</h1>
    <h2 id = "directions">lets do some puzzles!</h2><br>
    <div id="customerTableView">
        <button><a class="btn btn-sm" href="createPuzzle.php">Create a Puzzle</a></button>
        <?php

echo '<br><button><a class="btn btn-sm" align=center href="puzzles_list.php">Lets look at the puzzle List!!</a></button>';
    
  
    ?>
        <table class="display" id="ceremoniesTable" style="width:100%">
            <div class="table responsive">
                <thead>
                <tr>

                </tr>
                </thead>
                <tbody>
                <?php
                // fetch the data from $_GLOBALS
                if ($data->num_rows > 0) {
                    // output data of each row
                    while($row = $data->fetch_assoc()) {
                        echo '<tr>
                         



                              
                        <td><img class="thumbnailSize" src="Images/puzzle_images/' .$row["puzzle_image"]. '" alt="'.$row["puzzle_image"].'"></td>
                        <td><img class="thumbnailSize" src="Images/puzzle_images/' .$row["puzzle_image"]. '" alt="'.$row["puzzle_image"].'"></td>
                                <td><img class="thumbnailSize" src="Images/puzzle_images/' .$row["puzzle_image"]. '" alt="'.$row["puzzle_image"].'"></td>
                            </tr>';
                    }//end while
                }//end if
                else {
                    echo "0 results";
                }//end else
                ?>
                              

                </tbody>
            </div>
        </table>
    </div>
</div>
    
    <?php

echo '<br><button><a class="btn btn-sm" align=center href="puzzles_list.php">Lets look at the puzzle List!!</a></button>';
    
  
    ?>
    
    </body>
</html>
