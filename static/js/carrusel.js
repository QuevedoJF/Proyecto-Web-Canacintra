document.addEventListener("DOMContentLoaded", () => {
    const track = document.getElementById("track");
    const slides = Array.from(track.children);
    const status = document.getElementById("carousel-status");
    let index = 0;
    const interval = 3000; // tiempo entre imágenes (ms)

    // Función para cambiar a la siguiente imagen
    function nextSlide() {
      index = (index + 1) % slides.length;
      track.style.transform = `translateX(-${index * 100}%)`;
      if (status) {
        status.textContent = `Slide ${index + 1} de ${slides.length}`;
      }
    }

    // Cambia la imagen automáticamente cada cierto tiempo
    setInterval(nextSlide, interval);

    // Iniciar en la primera imagen
    track.style.transform = "translateX(0)";
  });