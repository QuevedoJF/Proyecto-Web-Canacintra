document.addEventListener('DOMContentLoaded', function() {
    const container = document.querySelector(".container");
    const btnSignIn = document.getElementById("btn-sign-in");
    const btnSignUp = document.getElementById("btn-sign-up");

    btnSignIn.addEventListener("click", function(e){
        e.preventDefault();
        container.classList.remove("toggle");
    });

    btnSignUp.addEventListener("click", function(e){
        e.preventDefault();
        container.classList.add("toggle");
    });
});