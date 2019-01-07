// navbar quicklinks dropdown start
function showHide(){
  const menu = document.getElementById("quicklinks-menu");
  menu.classList.toggle("hidden");
}

const quickLinks = document.querySelector(".navbar-quicklinks");
quickLinks.addEventListener("click", showHide);
// navbar quicklinks dropdown end


// avatar dropdown start
function showHideAvatar(){
  const avatarMenu = document.getElementById("quicklinks-user-menu");
  avatarMenu.classList.toggle("hidden");
}

const avatarMenu = document.querySelector(".navbar-login");
avatarMenu.addEventListener("click", showHideAvatar);
// avatar dropdown end
