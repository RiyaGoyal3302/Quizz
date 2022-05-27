<?php

//config.php

//Include Google Client Library for PHP autoload file
require_once 'vendor/autoload.php';

//Make object of Google API Client for call Google API
$google_client = new Google_Client();

//Set the OAuth 2.0 Client ID
$google_client->setClientId('520660819744-vkpo86j2dacebcvt9o62bero6aanb51u.apps.googleusercontent.com');

//Set the OAuth 2.0 Client Secret key
$google_client->setClientSecret('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');

//Set the OAuth 2.0 Redirect URI
$google_client->setRedirectUri('http://localhost/quiz/index.php');

//
$google_client->addScope('email');

$google_client->addScope('profile');

//start session on web page
session_start();

?>