function showHide(){
  const menu = document.getElementById("logo-menu");
  menu.classList.toggle("hidden");
}

const logo = document.querySelector(".navbarlogo");
logo.addEventListener("mouseover", showHide);
