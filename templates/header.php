<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to the Spice Girls DataBase !</title>
    <link rel="stylesheet" href="<?= $cssStylePath ?>">
    <link rel="stylesheet" href="<?= $cssIndexPath?>">
    <link rel="stylesheet" href="<?= $cssArtistPath?>">
    <script src="<?= $jsPath ?>" defer></script>
</head>

<body>

    <header>
        <a href="<?= $indexPath?>">
            <img src="<?= $logoPath ?>" alt="spice database logo">
        </a>
        <p>Spice DataBase</p>

        <nav class="dropdown">
            <div class="dropdown-first-row">
                <a href="<?= $artistPath?>">Members</a>
                <svg id="chevron-icon" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#051A99" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-chevron-down">
                    <path d="m6 9 6 6 6-6" />
                </svg>
            </div>
            <div class="dropdown-content" id="navigation">
                <div class="dropdown-row">
                    <a href="<?= $albumPath?>">Albums</a>
                </div>
                <div class="dropdown-row">
                    <a href="<?= $songPath?>">Lyrics</a>
                </div>
            </div>
        </nav>

        <div id="signInButton">
            <svg class="sign-in-svg" xmlns="http://www.w3.org/2000/svg" width="70" height="70" viewBox="0 0 24 24" fill="none" stroke="#051A99" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-circle-user-round">
                <path d="M18 20a6 6 0 0 0-12 0" />
                <circle cx="12" cy="10" r="4" />
                <circle cx="12" cy="12" r="10" />
            </svg>
        </div>

        <div id="signInPopup" class="popup">
            <div class="popup-content">
                <span class="close">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-x">
                        <path d="M18 6 6 18" />
                        <path d="m6 6 12 12" />
                    </svg>
                </span>
                <h2>Sign In</h2>
                <form>
                    <div>
                       <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>  
                    </div>
                   <div>
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                   </div>
                    <button type="submit">Sign In</button>
                </form>
            </div>
        </div>

    </header>