<?php

include_once 'db_configuration.php';

if (isset($_POST['id'])){

    $id = mysqli_real_escape_string($db, $_POST['id']);
    $name = mysqli_real_escape_string($db, $_POST['name']);
    $creatorName = mysqli_real_escape_string($db,$_POST['creator_name']);
    $authorName = mysqli_real_escape_string($db,$_POST['author_name']);
    $bookName = mysqli_real_escape_string($db,$_POST['book_name']);
    $notes = mysqli_real_escape_string($db,$_POST['notes']);

    $puzzleImage = basename($_FILES["fileToUpload"]["puzzle_image"]);
    $solutionImage = basename($_FILES["fileToUpload"]["solution_image"]);
  //  $validate = true;
   // $validate = emailValidate($answer);
    
    
   // if($validate){
    
        if($puzzleImage != ""){
            $target_dir = "Images/puzzle_images/";
            $target_file = $target_dir . basename($_FILES["fileToUpload"]["puzzle_image"]);
            $uploadOk = 1;
            unlink($oldimage);
            $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
            // Check if image file is a actual image or fake image
            if(isset($_POST["submit"])) {
                $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
                if($check !== false) {
                    $uploadOk = 1;
                } else {
                    header('location: modifyPuzzle.php?modifyQuestion=fileRealFailed');
                    $uploadOk = 0;
                }
     //       }
            // Check if file already exists
            if (file_exists($target_file)) {
                header('location: modifyPuzzle.php?modifyQuestion=fileExistFailed');
                $uploadOk = 0;
            }
            
            // Allow certain file formats
            if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
            && $imageFileType != "gif" ) {
                header('location: modifyPuzzle.php?modifyQuestion=fileTypeFailed');
                $uploadOk = 0;
            }
            // Check if $uploadOk is set to 0 by an error
            if ($uploadOk == 0) {
                
            // if everything is ok, try to upload file
            } else {
                if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
                        echo $target_file;       
                    $sql = "UPDATE questions
                    SET name = '$name',
                        creator_name = '$creatorName',
                        book_name = '$bookName',
                        author_name = '$authorName',
                        notes = '$notes',
                    
                        puzzle_image = '$target_file',
                        solution_image = '$target_file'        
                    
                    WHERE id = '$id'";

                    mysqli_query($db, $sql);
                    header('location: puzzles_list.php?puzzleUpdated=Success');
                    }
                }
        }
                else{
                    
                $image = $_SESSION["image"];
            
                $sql = "UPDATE puzzles
                SET name = '$name',
                    creator_name = '$creatorName',
                    author_name = '$authorName',
                    book_name = '$bookName',
                    notes = '$notes',

                
                WHERE id = '$id'";

                mysqli_query($db, $sql);
                
                header('location: puzzles_list.php?puzzleUpdated=Success');
                }
    }else{
        header('location: modifyPuzzle.php?modifyPuzzle=answerFailed&id='.$id);}
}//end if



?>
