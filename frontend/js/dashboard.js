const sidebar = document.getElementById("mySidebar");
const overlay = document.getElementById("overlay");
const openBtn = document.getElementById("openSidebar");
const closeBtn = document.getElementById("closeSidebar");

// Menu navigasi
document.addEventListener('DOMContentLoaded', function () {
  const menuItems = document.querySelectorAll('.menu li');
  menuItems.forEach(item => {
    item.addEventListener('click', function () {
      const id = this.id;
      switch (id) {
        case 'data-tracking':
          window.location.href = 'table-pue.php';
          break;
        case 'monitoring':
          window.location.href = 'dashboard.html';
          break;
        case "alarm":
          window.location.href = "table-alarm.php";
          break;
        // Tambahkan aksi lainnya jika dibutuhkan
        default:
          console.log(id);
      }
      // Tutup sidebar setelah klik menu
      sidebar.classList.remove("show");
      overlay.classList.remove("show");
    });
  });
});

// Open / Close sidebar
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
