<?php
session_start();

function __autoload( $classname )
{
	require_once( '../classes/' . $classname . '.php' );
}

$message = NULL;
$USER    = new User();
$dbClass = new Database();
$db      = $dbClass->getDb();


if ( $USER->validate($dbClass) )
{
    $userData   =   explode( ',', $_COOKIE['authenticated'] ); //explode sheid een string bij ','
    $username   =   $userData[0];
    $userData   =   $USER->toonInfo($dbClass, $username);
}
else
{
    header( 'location: ../login.php' );
}


   if(isset($_FILES['file'])){
      $errors		= array();
      $file_name	= $_FILES['file']['name'];
      $file_size	= $_FILES['file']['size'];
      $file_tmp 	= $_FILES['file']['tmp_name'];
      $extension 	= pathinfo($_FILES["file"]["name"], PATHINFO_EXTENSION);

      $file_ext		= strtolower(end(explode('.',$_FILES['file']['name'])));
      $expensions	= array("jpeg","jpg","png");

      if(in_array($file_ext,$expensions)=== false){
         $errors[]="extension not allowed, please choose a JPEG or PNG file.";
      }
      
      if($file_size > 2097152) {
         $errors[]='File size must be excately 2 MB';
      }
      
      if(empty($errors)==true) {
        
        move_uploaded_file($file_tmp,"../upload/private/profile_".$userData[0]['username'].".".$extension);
        
        $ok = $dbClass->query('UPDATE members SET avatarUrl = :avatarUrl
    			WHERE id = :id',
    			array(
    			':id' => $userData[0]["id"], 
    			':avatarUrl' => "profile_".$userData[0]['username'].".".$extension,
    		));
        
        echo "Success";

      }else{
         print_r($errors);
      }
   }

  $facebook_link    = $_POST['facebook_link'];
  $linkedin_link    = $_POST['linkedin_link'];
  $googlePlus_link  = $_POST['googlePlus_link'];
  $youtube_link     = $_POST['youtube_link'];

  $dbClass->query('UPDATE members 
  SET facebook_link     = :facebook_link,
   linkedin_link        = :linkedin_link,
   googlePlus_link      = :googlePlus_link,
   youtube_link         = :youtube_link
  WHERE id              = :members_id',
  array(
  ':members_id'         => $userData[0]["id"], 
  ':facebook_link'      => $facebook_link,
  ':linkedin_link'      => $linkedin_link, 
  ':googlePlus_link'    => $googlePlus_link, 
  ':youtube_link'       => $youtube_link 
));

   	header( 'location: ../account.php' );
	exit;
?> 