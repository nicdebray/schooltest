function showHide(){
  const menu = document.getElementById("quicklinks-menu");
  menu.classList.toggle("hidden");
}

const logo = document.querySelector(".navbar-quicklinks");
logo.addEventListener("click", showHide);
