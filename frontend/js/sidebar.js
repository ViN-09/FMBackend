function appendToMain(content) {
    const main = document.querySelector('main');
    if (!main) return console.error('Tag <main> tidak ditemukan.');
    if (typeof content === 'string') {
        main.insertAdjacentHTML('beforeend', content);
    } else if (content instanceof Node) {
        main.appendChild(content);
    }
}

function createSidebar() {
    const sidebarHTML = `
        <div id="loader">
  <div class="spinner"></div>
</div>
        <div id="hamburgerbar">
            <div>
                <i class="bi bi-list" style="font-weight: 800;"></i>
            </div>
            <div>
                <img src="asset/logo-telkomsel-baru.DYhv_uL8_1T5nit-removebg-preview.png" alt="Menu" style="width: auto; height: 40px;" /> 
            </div>
        </div>

        <div class="sidebar" id="sidebar">
            <div class="close-btn" id="closeBtn"><i class="bi bi-x-lg"></i></div>
           <img src="asset/logo-telkomsel-baru.DYhv_uL8_1T5nit-removebg-preview.png"
     alt="Menu"
     style="width: 180px; height: auto; margin-bottom: 10px; filter: brightness(0) invert(1); padding-bottom: 10px;" />
        <div id="main-menu">
            <a href="#"><i class="bi bi-display"></i> Dashboard</a>
            <a href="#"><i class="bi bi-clipboard-data"></i> Data Tracking</a>
            <a href="checklist.html"><i class="bi bi-database-gear"></i> Checklist</a>
            <a href="#rumah"><i class="bi bi-database-gear"></i> Data Potensi</a>
            <a href="#"><i class="bi bi-file-earmark-post"></i> Profile</a>
            <a href="#"><i class="bi bi-person-circle"></i> User</a>
        </div>  
        </div>
    `;

    appendToMain(sidebarHTML);

    const hamburger = document.getElementById('hamburgerbar');
    const sidebar = document.getElementById('sidebar');
    const closeBtn = document.getElementById('closeBtn');

    // Klik hamburger -> buka sidebar
    hamburger.addEventListener('click', () => {
        sidebar.classList.add('active');
    });

    // Klik tombol X -> tutup sidebar
    closeBtn.addEventListener('click', () => {
        sidebar.classList.remove('active');
    });

    // Klik di dalam sidebar (bisa di-disable jika gak mau)
    sidebar.addEventListener('click', () => {
        sidebar.classList.remove('active');
    });

    // Klik di luar sidebar dan hamburger -> tutup sidebar
    document.addEventListener('click', (e) => {
        if (!sidebar.contains(e.target) && !hamburger.contains(e.target)) {
            sidebar.classList.remove('active');
        }
    });
}

  window.addEventListener("load", function() {
    // Paksa loading minimal 3 detik
    setTimeout(() => {
      document.getElementById("loader").style.display = "none";
    }, 1500);
  });

createSidebar();
