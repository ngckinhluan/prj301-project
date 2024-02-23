const logreBox = document.querySelector('.logreg-box');
const signupLink = document.querySelector('.signup-link');
const loginLink = document.querySelector('.login-link');


loginLink.addEventListener('click',() => {
    logreBox.classList.add('active');
});
signupLink.addEventListener('click',() => {
    logreBox.classList.remove('active');
});