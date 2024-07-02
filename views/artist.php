<?php

$cssStylePath = '../assets/css/style.css';
$cssArtistPath = '../assets/css/artist.css';
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
$artists = getAllArtists($pdo)

?>

<main>
    <!-- <?php debug($artists) ?> -->

    <section class="spice-girls-cards">
        <?php foreach ($artists as $artist) { ?>
            <!-- <?php debug($artist) ?> -->
            <div class="container">
                <div class="card">
                    <div class="front">
                        <img src="<?= $artist['picture_url'] ?>" alt="picture of <?= $artist['firstname'] . " " . $artist['lastname'] ?>">
                    </div>
                    <div class="back">
                        <div class="info">
                            <p><span class="question">Firstname : </span> <span class="answer"><?= $artist['firstname'] ?></span></p>
                            <p><span class="question">Lastname : </span> <span class="answer"><?= $artist['lastname'] ?></span></p>
                            <p><span class="question">Nickname : </span> <span class="answer"><?= $artist['nickname'] ?></span></p>
                            <p><span class="question">Age when she joined : </span> <span class="answer"><?= $artist['age_when_joined'] ?></span></p>
                            <p><span class="question">Personal Quote : </span> <span class="answer"><?= $artist['personal_quote'] ?>"</p>
                        </div>
                        <a href="./artist_details.php?id=<?=$artist['artist_id']?>" class="button">More</a>
                    </div>
                </div>
            </div>
        <?php } ?>
    </section>

</main>

<?php
include_once '../templates/footer.php';
?>