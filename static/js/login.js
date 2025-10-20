const container = document.getElementById('container');
const registerBtn = document.getElementById('register');
const loginBtn = document.getElementById('login');

// Esto se activa al presionar el botón "Registrarse"
registerBtn.addEventListener('click', () => {
    // Añade la clase 'active' para mover el contenedor y los elementos
    container.classList.add("active");
});

// Esto se activa al presionar el botón "Iniciar Sesión"
loginBtn.addEventListener('click', () => {
    // Quita la clase 'active' para volver a la posición inicial
    container.classList.remove("active");
});