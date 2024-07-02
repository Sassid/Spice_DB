<?php

$cssStylePath = '../assets/css/style.css';
$jsPath = '../assets/js/main.js';
$logoPath = '../assets/img/logo.png';
$indexPath = '../index.php';
$artistPath = './artist.php';
$albumPath = './album.php';
$songPath = './song.php';

include_once '../templates/header.php';
include_once '../src/functions/debug.php';
require_once '../src/config/db_connect.php';
require_once '../src/repo/artist_repo.php';

$pdo = connectDB();
<<<<<<< HEAD
$artistDetails = getArtistDetailsById($pdo, $_GET["id"]);

debug($_GET);

debug($artistDetails);
=======
// $artistDetails = getArtistDetailsById($pdo, $_GET)

debug($_GET)


>>>>>>> d4bfb9e1ee88935962054567604f74daa7074d36

?>

<main>



</main>