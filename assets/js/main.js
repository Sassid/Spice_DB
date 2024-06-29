document.addEventListener('DOMContentLoaded', (event) => {
    const signInButton = document.getElementById('signInButton');
    const signInPopup = document.getElementById('signInPopup');
    const closeBtn = document.querySelector('.popup .close');

    // Show the popup when the sign-in button is clicked
    signInButton.addEventListener('click', () => {
        signInPopup.style.display = 'flex';
    });

    // Close the popup when the close button is clicked
    closeBtn.addEventListener('click', () => {
        signInPopup.style.display = 'none';
    });

    // Close the popup when clicking outside the popup content
    window.addEventListener('click', (event) => {
        if (event.target === signInPopup) {
            signInPopup.style.display = 'none';
        }
    });
});
