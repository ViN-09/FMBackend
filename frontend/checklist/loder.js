document.addEventListener("DOMContentLoaded", () => {
    // Buat elemen loader
    const loader = document.createElement("div");
    loader.id = "loader";

    const spinner = document.createElement("div");
    spinner.className = "spinner";

    loader.appendChild(spinner);

    // Append ke body
    document.body.appendChild(loader);
});

  window.addEventListener("load", function() {
    // Paksa loading minimal 3 detik
    setTimeout(() => {
      document.getElementById("loader").style.display = "none";
    }, 1500);
  });