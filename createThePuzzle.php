<?php

include_once 'db_configuration.php';

if (isset($_POST['creator_name'])){

    echo "HERE";
    $name = mysqli_real_escape_string($db, $_POST['name']);
    $creatorName = mysqli_real_escape_string($db,$_POST['creator_name']);
    $authorName = mysqli_real_escape_string($db,$_POST['author_name']);
    $bookName = mysqli_real_escape_string($db,$_POST['book_name']);
    $notes = mysqli_real_escape_string($db,$_POST['notes']);

    $puzzleImage = basename($_FILES["fileToUpload"]["puzzle_image"]);
    $solutionImage = basename($_FILES["fileToUpload"]["solution_image"]);

    $validate = true;
   // $validate = emailValidate($answer);
    
    
    if($validate){
        
        $target_dir = "Images/puzzle_images/";
        $target_dir2="Images/solution_images/";
        $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
        // Check if image file is a actual image or fake image
        if(isset($_POST["submit"])) {
            $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
            if($check !== false) {
                $uploadOk = 1;
            } else {
                header('location: createPuzzle.php?createPuzzle=fileRealFailed');
                $uploadOk = 0;
            }
        }
        // Check if file already exists
        if (file_exists($target_file)) {
            header('location: createPuzzle.php?createPuzzle=fileExistFailed');
            $uploadOk = 0;
        }
        
        // Allow certain file formats
        if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif" ) {
            header('location: createPuzzle.php?createPuzzle=fileTypeFailed');
            $uploadOk = 0;
        }
        // Check if $uploadOk is set to 0 by an error
        if ($uploadOk == 0) {
            
        // if everything is ok, try to upload file
        } else {
            if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
                
                $sql = "INSERT INTO puzzles(name,creator_name,author_name,book_name,puzzle_image,solution_image,notes)
                VALUES ('$name','$creatorName','$authorName','$bookName','$puzzleImage','$solutionImage','$notes')
                ";

                mysqli_query($db, $sql);
                header('location: puzzles_list.php?createPuzzle=Success');
                }
            }
        }else{
            header('location: createPuzzle.php?createPuzzle=answerFailed'); 
    }        

}//end if

//function emailValidate($answer){
  //  global $choice1,$choice2,$choice3,$choice4;
    //if($answer == $choice1 or $answer == $choice2 or $answer == $choice3 or $answer == $choice4){
      //  return true;
   // }else{
     //   return false;
    //}      
//}


?>