<?php
session_start();

function __autoload( $classname )
{
	require_once( 'classes/' . $classname . '.php' );
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
    header( 'location: login.php' );
}

$template 			= new Template();
$headersHTML 		= $template->getCreateHeaders();
$headersCSS			= $template->getCreateHeadersCSS();
$headersJS			= $template->getCreateHeadersJS();
$headerHTMLitems 	= "";
$headerCSSitems 	= "";
$headerJSitems 		= "";

foreach ($headersHTML as $headerHTML) 
{
	$headerHTMLitems .= "<div class='item'>".$headerHTML."</div>";
}

foreach ($headersCSS as $headerCSS) 
{
	$headerCSSitems .= "<link href='".$headerCSS."' rel='stylesheet'>";
}

foreach ($headersJS as $headerJS) 
{
	$headerJSitems .= "<script src='".$headerJS."'></script> ";
}

$headerJS =	"./templatescreate/headers/js/".$userData[0]["header_section"].".js";

$createPage = new ArnesEngine("views/editeHeader.tpl");
$createPage->set("headerHTMLitems", $headerHTMLitems);
$createPage->set("headerCSSitems", $headerCSSitems);
$createPage->set("headerJSitems", $headerJSitems);

$createPage->set("voornaam", $userData[0]['voornaam']);
$createPage->set("header_image", $userData[0]['header_image']);
$createPage->set("header_bigSentence", $userData[0]['header_bigSentence']);
$createPage->set("header_smallSentence", $userData[0]['header_smallSentence']);
echo $createPage->output();
 
?>