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

$dbClass 	= 	new Database();

	$ok = $dbClass->query( "
				INSERT INTO skills ( members_id,	skill_position,	skill_title, skill_score) 
		    	VALUES ( :members_id, :skill_position, :skill_title, :skill_score)",  
		    	array(
		    	':members_id' => $userData[0]['id'],
		    	':skill_position' => '1',
		    	':skill_title' => 'Photograpy',
		    	':skill_score' => '10'
		    	));

   	$ok = $dbClass->query("UPDATE members
                            JOIN skills
                            ON members.id = skills.members_id
                            SET skill_position = :skill_position,
                            skill_title = :skill_title,
                            skill_score = :skill_score
                            WHERE members.id = :id", 
                    array(':id' => $userData[0]["id"], 
                    		':skill_position' => '40',
					    	':skill_title' => 'reggreg',
					    	':skill_score' => '5' 
                    	));
/*
   	$dbClass->query("UPDATE members
                            JOIN skills
                            ON members.id = skills.members_id
                            SET skills.title = :title
                            WHERE members.id = :id", 
                    array(':id' => $userData[0]["id"] )
                );*/

?>