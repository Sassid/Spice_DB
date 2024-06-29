<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to my Spice Girls DataBase !</title>
    <link rel="stylesheet" href="./assets/css/style.css">
    <script src="./assets/js/main.js" ></script>
</head>

<body>

<header>
    <a href="">
        <img src="./assets/img/logo.png" alt="spice database logo">
    </a>
    <p>Welcome to my Spice DataBase !</p>
    <nav>
        <ul class="nav">
            <li class="nav-item">
                <a href="#" class="nav-link">Members</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">Albums</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">Lyrics</a>
            </li>
        </ul>
    </nav>
    <div id="signInButton">
      <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-circle-user-round"><path d="M18 20a6 6 0 0 0-12 0"/><circle cx="12" cy="10" r="4"/><circle cx="12" cy="12" r="10"/></svg>
    </div>

    <div id="signInPopup" class="popup">
        <div class="popup-content">
               <span class="close">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-x"><path d="M18 6 6 18"/><path d="m6 6 12 12"/></svg>
            </span>
            <h2>Sign In</h2>
            <form>
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                <button type="submit">Sign In</button>
            </form>
        </div>
    </div>

</header>

<main>

</main>

<footer>

</footer>

</body>
</html>