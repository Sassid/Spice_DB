// * SIGN IN POPUP

document.addEventListener("DOMContentLoaded", (event) => {
  const signInButton = document.getElementById("signInButton");
  const signInPopup = document.getElementById("signInPopup");
  const closeBtn = document.querySelector(".popup .close");
  const usernameInput = document.getElementById("username");

  // Show the popup when the sign-in button is clicked
  signInButton.addEventListener("click", () => {
    signInPopup.style.display = "flex";
    usernameInput.focus();
  });

  // Close the popup when the close button is clicked
  closeBtn.addEventListener("click", () => {
    signInPopup.style.display = "none";
  });

  // Close the popup when clicking outside the popup content
  window.addEventListener("click", (event) => {
    if (event.target === signInPopup) {
      signInPopup.style.display = "none";
    }
  });
});

// * DROP DOWN MENU

const chevronIcon = document.getElementById("chevron-icon");
const navigation = document.getElementById("navigation");
chevronIcon.addEventListener("click", () => {
  navigation.classList.toggle("active");

  console.log("Dropdown Icon classes:", chevronIcon.classList);

  if (navigation.classList.contains("active")) {
    chevronIcon.classList.remove("lucide-chevron-down");
    chevronIcon.classList.add("lucide-chevron-up");
  } else {
    chevronIcon.classList.remove("lucide-chevron-up");
    chevronIcon.classList.add("lucide-chevron-down");
  }

// if (navigation.classList.contains("active")) {
//     chevronIcon.setAttribute("class", "lucide lucide-chevron-up");
// } else {
//     chevronIcon.setAttribute("class", "lucide lucide-chevron-down");
// }
});
