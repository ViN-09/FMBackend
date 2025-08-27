  const sidebar = document.getElementById("mySidebar");
  const overlay = document.getElementById("overlay");
  const openBtn = document.getElementById("openSidebar");
  const closeBtn = document.getElementById("closeSidebar");

  document.addEventListener('DOMContentLoaded', function() {
    const menuItems = document.querySelectorAll('.menu li');
    menuItems.forEach(item => {
      item.addEventListener('click', function() {
        console.log(this.id);
      });
    });
  });

  openBtn.onclick = () => {
    sidebar.classList.add("show");
    overlay.classList.add("show");
  }

  closeBtn.onclick = () => {
    sidebar.classList.remove("show");
    overlay.classList.remove("show");
  }

  overlay.onclick = () => {
    sidebar.classList.remove("show");
    overlay.classList.remove("show");
  }