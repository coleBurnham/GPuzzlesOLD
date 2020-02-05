<?php $page_title = 'Puzzle Master > Create Puzzle'; ?>
<?php 
    require 'bin/functions.php';
    require 'db_configuration.php';
    include('header.php'); 
    $page="puzzles_list.php";
 //   verifyLogin($page);

?>
<?php 
    $mysqli = NEW MySQLi('localhost','root','','puzzles_g_db');
    $resultset = $mysqli->query("SELECT DISTINCT name FROM puzzles ORDER BY id ASC");   
?>
<link href="css/form.css" rel="stylesheet">
<style>#title {text-align: center; color: darkgoldenrod;}</style>
<div class="container">
    <!--Check the CeremonyCreated and if Failed, display the error message-->
    <?php
    if(isset($_GET['createPuzzle'])){
        if($_GET["createPuzzle"] == "fileRealFailed"){
            echo '<br><h3 align="center" class="bg-danger">FAILURE - Your image is not real, Please Try Again!</h3>';
        }
    }
    if(isset($_GET['createPuzzle'])){
        if($_GET["createPuzzle"] == "answerFailed"){
            echo '<br><h3 align="center" class="bg-danger">FAILURE - Your answer was not one of the choices, Please Try Again!</h3>';
        }
    }
    if(isset($_GET['createPuzzle'])){
        if($_GET["createPuzzle"] == "fileTypeFailed"){
            echo '<br><h3 align="center" class="bg-danger">FAILURE - Your image is not a valid image type (jpg,jpeg,png,gif), Please Try Again!</h3>';
        }
    }
    if(isset($_GET['createPuzzle'])){
        if($_GET["createPuzzle"] == "fileExistFailed"){
            echo '<br><h3 align="center" class="bg-danger">FAILURE - Your image does not exist, Please Try Again!</h3>';
        }
    }
  
    ?>
    <form action="createThePuzzle.php" method="POST" enctype="multipart/form-data">
        <br>
        <h3 id="title">Create A Puzzle</h3> <br>
        
        <table>
        <!--
            <tr>
                <td style="width:100px">Puzzles!!</td>
                <td><select name="topic">
                   // <?php 
                    //while($rows = $resultset->fetch_assoc()){
                     //   $topic=$rows['topic']; 
                   // echo"<option Value='$topic'>$topic</option>";}?>
                    </select></td>
            </tr>
            //-->
            <tr>
                <td style="width:100px">Creator Name</td>
                <td><input type="text"  name="creator_name" maxlength="100" size="50" required title="Please enter the creator name."></td>
            </tr>
            <tr>
                <td style="width:100px">puzzle name</td>
                <td><input type="text"  name="name" maxlength="50" size="50" required title="Please enter a puzzle name"></td>
            </tr>
            <tr>
                <td style="width:100px">book name</td>
                <td><input type="text"  name="cook_name" maxlength="50" size="50" required title="Please enter the book name"></td>
            </tr>
            <tr>
                <td style="width:100px">author name:</td>
                <td><input type="text"  name="author_name" maxlength="50" size="50" required title="Please enter the author's name"></td>
            </tr>
            <tr>
                <td style="width:100px">solution image</td>
                <td><input type="file" name="fileToUpload" id="fileToUpload" maxlength="50" size="50"title="Please enter the solution image"></td>
            </tr>
            <tr>
                <td style="width:100px">puzzle Image</td>
                <td><input type="file" name="fileToUpload" id="fileToUpload" maxlength="50" size="50" title="Please enter the Image Name."></td>
            </tr>
        </table>

        <br><br>
        <div align="center" class="text-left">
            <button type="submit" name="submit" class="btn btn-primary btn-md align-items-center">Create Puzzle!!</button>
        </div>
        <br> <br>

    </form>
</div>

