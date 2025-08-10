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
        <div id="hamburgerbar">
            <div>
                <i class="bi bi-list"></i>
            </div>
            <div>
                <img src="asset/logo-telkomsel-baru.DYhv_uL8_1T5nit-removebg-preview.png" alt="Menu" style="width: auto; height: 40px;" /> 
            </div>
        </div>

        <div class="sidebar" id="sidebar">
            <div class="close-btn" id="closeBtn"><i class="fa fa-times"></i></div>
            <img src="asset/logo-telkomsel-baru.DYhv_uL8_1T5nit.webp" alt="Menu" style="width: 180px; height: auto;margin-bottom: 10px;" />
            <a href="#">Dashboard</a>
            <a href="#">Profile</a>
            <a href="#">Settings</a>
            <a href="#">Logout</a>
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

createSidebar();
