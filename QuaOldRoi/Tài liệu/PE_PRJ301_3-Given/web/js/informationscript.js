document.addEventListener('DOMContentLoaded', function() {
    const showPasswordBtn = document.querySelector('.show-password-btn');
    const passwordField = document.querySelector('.password-field');

    showPasswordBtn.addEventListener('click', function() {
        if (passwordField.type === 'password') {
            passwordField.type = 'text';
            showPasswordBtn.textContent = 'Hide';
        } else {
            passwordField.type = 'password';
            showPasswordBtn.textContent = 'Show';
        }
    });
});