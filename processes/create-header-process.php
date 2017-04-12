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

$selectedTemplate 		=	$_POST[ 'selectedTemplate' ];
$header_bigSentence		=	$_POST[	'header_bigSentence' ];
$header_smallSentence	=	$_POST[	'header_smallSentence' ];

if(isset($_POST['default_header_image']) == 'default'){
	$header_image = './assets/img/header_backgrounds/'.$selectedTemplate.'.jpg';
}else{
	$header_image = $_POST['header_image'];
}

$dbClass->query('UPDATE members 
	SET header_section 		= :header_section,
	 header_image 			= :header_image,
	 header_bigSentence 	= :header_bigSentence,
	 header_smallSentence 	= :header_smallSentence
	WHERE id 				= :members_id',
	array(
	':members_id' 			=> $userData[0]["id"], 
	':header_section' 		=> $selectedTemplate,
	':header_image' 		=> $header_image, 
	':header_bigSentence' 	=> $header_bigSentence, 
	':header_smallSentence' => $header_smallSentence 
));

header( 'location: ../mypage.php' );
exit;


?>