
<?php $page_title = 'Puzzles Master > Delete Puzzle'; ?>
<?php 
    require 'bin/functions.php';
    require 'db_configuration.php';
    include('header.php'); 
    $page="puzzles_list.php";
    verifyLogin($page);

?>
<div class="container">
<style>#title {text-align: center; color: darkgoldenrod;}</style>
<?php
include_once 'db_configuration.php';

if (isset($_GET['id'])){

    $id = $_GET['id'];
    
    $sql = "SELECT * FROM puzzles
            WHERE id = '$id'";

    if (!$result = $db->query($sql)) {
        die ('There was an error running query[' . $connection->error . ']');
    }//end if
}//end if

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo '<form action="deleteThePuzzle.php" method="POST">
    <br>
    <h3 id="title">Delete Puzzle</h3><br>
    <h2>'.$row["Puzzles"].' - '.$row["puzzles"].' </h2> <br>
    
    <div class="form-group col-md-4">
      <label for="id">Id</label>
      <input type="text" class="form-control" name="id" value="'.$row["id"].'"  maxlength="5" readonly>
    </div>
    
    <div class="form-group col-md-8">
      <label for="name">Topic</label>
      <input type="text" class="form-control" name="creator_name" value="'.$row["creator_name"].'"  maxlength="255" readonly>
    </div>
    
    <div class="form-group col-md-4">
      <label for="category">Question</label>
      <input type="text" class="form-control" name="author_name" value="'.$row["author_name"].'"  maxlength="255" readonly>
    </div>
        
    <div class="form-group col-md-4">
      <label for="level">Choice 1</label>
      <input type="text" class="form-control" name="choice_1" value="'.$row["choice_1"].'"  maxlength="255" readonly>
    </div>
        
    <div class="form-group col-md-4">
      <label for="facilitator">Choice 2</label>
      <input type="text" class="form-control" name="choice_2" value="'.$row["choice_2"].'"  maxlength="255" readonly>
    </div>

    <div class="form-group col-md-12">
      <label for="description">Choice 3</label>
      <input type="text" class="form-control" name="choice_3" value="'.$row["choice_3"].'"  maxlength="255" readonly>
    </div>

    <div class="form-group col-md-6">
      <label for="required">Choice 4</label>
      <input type="text" class="form-control" name="choice_4" value="'.$row["choice_4"].'"  maxlength="255" readonly>
    </div>
    
    <div class="form-group col-md-6">
      <label for="optional">Answer</label>
      <input type="text" class="form-control" name="answer" value="'.$row["answer"].'"  maxlength="255" readonly>
    </div>

    <div class="form-group col-md-4">
      <label for="cadence">Image Path</label>
      <input type="text" class="form-control" name="image_name" value="'.$row["image_name"].'"  maxlength="255" readonly>
    </div>
           
    <br>
    <div class="text-left">
        <button type="submit" name="submit" class="btn btn-primary btn-md align-items-center">Confirm Delete Question</button>
    </div>
    <br> <br>
    
    </form>';

    }//end while
}//end if
else {
    echo "0 results";
}//end else

?>

</div>


