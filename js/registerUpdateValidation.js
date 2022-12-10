var lrnError = document.getElementById('lrn-error');
var nameError = document.getElementById('name-error');
var sectionError = document.getElementById('section-error');
var emailError = document.getElementById('email-error');
var addressError = document.getElementById('address-error');


function validateLrn() {
    var lrnInput = document.getElementById('lrn').value;
    var lrnLabel = document.getElementById('lrnErrorIcon');

    if (lrnInput.length == 0) {
        lrnError.innerHTML = 'Lrn is Required!';
        lrnLabel.innerHTML = '<img src="../assets/badinput.png" alt="badinput"> ';
        return false;
    } else if (lrnInput.length < 12) {
        lrnError.innerHTML = 'Lrn should be 12 characters';
        lrnLabel.innerHTML = '<img src="../assets/badinput.png" alt="badinput"> ';
        return false;
    } else if (lrnInput.length > 12) {
        lrnError.innerHTML = 'Lrn should only be 12 characters';
        lrnLabel.innerHTML = '<img src="../assets/badinput.png" alt="badinput"> ';
        return false;
    } else {
        lrnError.innerHTML = '';
        lrnLabel.innerHTML = ' <img src="../assets/goodinput.png" alt="goodinput"> ';
        return true;
    }
}

function validateName() {
    var nameInput = document.getElementById('name').value;
    var nameLabel = document.getElementById('nameErrorIcon');

    if (nameInput.length == 0) {
        nameError.innerHTML = 'Name is Required!';
        nameLabel.innerHTML = '<img src="../assets/badinput.png" alt="badinput"> ';
        return false;
    } else {
        nameError.innerHTML = '';
        nameLabel.innerHTML = ' <img src="../assets/goodinput.png" alt="goodinput"> ';
        return true;
    }
}

function validateSection() {
    var sectionInput = document.getElementById('section').value;
    var sectionLabel = document.getElementById('sectionErrorIcon');

    if (sectionInput.length == 0) {
        sectionError.innerHTML = 'Section is Required!';
        sectionLabel.innerHTML = '<img src="../assets/badinput.png" alt="badinput"> ';
        return false;
    } else {
        sectionError.innerHTML = '';
        sectionLabel.innerHTML = ' <img src="../assets/goodinput.png" alt="goodinput"> ';
        return true;
    }
}

function validateEmail() {
    var emailInput = document.getElementById('email').value;
    var emailLabel = document.getElementById('emailErrorIcon');

    if (emailInput.length == 0) {
        emailError.innerHTML = 'Email is Required!';
        emailLabel.innerHTML = '<img src="../assets/badinput.png" alt="badinput"> ';
        return false;
    } else {
        emailError.innerHTML = '';
        emailLabel.innerHTML = ' <img src="../assets/goodinput.png" alt="goodinput"> ';
        return true;
    }
}

function validateAddress() {
    var addressInput = document.getElementById('address').value;
    var addressLabel = document.getElementById('addressErrorIcon');

    if (addressInput.length == 0) {
        addressError.innerHTML = 'Address is Required!';
        addressLabel.innerHTML = '<img src="../assets/badinput.png" alt="badinput"> ';
        return false;
    } else {
        addressError.innerHTML = '';
        addressLabel.innerHTML = ' <img src="../assets/goodinput.png" alt="goodinput"> ';
        return true;
    }
}
