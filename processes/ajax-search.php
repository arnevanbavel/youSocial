<?php
session_start();

function __autoload( $classname )
{
	require_once( '../classes/' . $classname . '.php' );
}

$message = NULL;
$dbClass = new Database();
$db      = $dbClass->getDb();

$search  = $_POST['searchString'];
if (!empty($search)) 
{
		$users = $dbClass->query('SELECT * FROM members WHERE voornaam LIKE :search OR achternaam LIKE :search',
		array(
		':search' => '%'.$search.'%'
	));

	$result ="";
	foreach ($users as $user) {
		$result .="<div>
					<div class='row'>
						<div class='col-md-2'>
							<img src='./upload/private/".$user['avatarUrl']."' class='img-thumbnail img-responsive'>
						</div>
						<div class='col-md-6'>
							<p>".$user['voornaam']." ".$user['achternaam'] . "<br> Web Developer </p>
						</div>
						<div class='col-md-4'>
							<p>Bekijk Profiel</p>
						</div>
					</div>
				</div>";
	}
	$response = "<div class='container-fluid'>".$result."</div>" ;
}
else{

	$response ='<div class="container-fluid">
					<div class="row">
						<div class="col-md-12 text-center">
							<p>There were no "results" found</p>
						</div>
					</div>
				</div>';
}

echo $response;

?>