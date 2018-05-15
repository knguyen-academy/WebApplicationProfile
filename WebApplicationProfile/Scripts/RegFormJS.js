// Retrieve modal id
var modal = document.getElementById('id01');
var loginF = document.getElementById('id00');
// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    if (event.target === modal) {
        modal.style.display = "none";
        loginF.style.display= "block";
    }
}

//When click button, bring up Modal
function bringUp() {
    //var modal = document.getElementById('id01');
    modal.style.display = "block";
    loginF.style.display= "none";
}

//Bringdown Modal
function bringDown(){
modal.style.display="none";
loginF.style.display= "block";
}


var signupStep = document.getElementById('signupStep');
var confirmStep = document.getElementById('confirmStep');
var fnValue = document.getElementById('FirstName_TextBox');
var fn = document.getElementById('fn');
var lnValue = document.getElementById('LastName_TextBox');
var ln = document.getElementById('ln');
var phoneValue = document.getElementById('Phone_TextBox');
var phone = document.getElementById('phone');
var genderValue = document.getElementById('Gender_DropDownList1');
var gender = document.getElementById('gender');
var usernameValue = document.getElementById('Username1');
var username = document.getElementById('username');
var emailValue = document.getElementById('Email_TextBox');
var email = document.getElementById('email');

function nextForm() {
    signupStep.style.display = "none";
    confirmStep.style.display = "block";
    fn.innerHTML = fnValue.value;
    ln.innerHTML = lnValue.value;
    phone.innerHTML = phoneValue.value;
    gender.innerHTML = genderValue.value;
    email.innerHTML = emailValue.value;
    username.innerHTML = usernameValue.value;

}

function prevForm() {
    
    signupStep.style.display = "block";
    confirmStep.style.display = "none";
  
}

function confirmForm() {
    alert("confirm");
}


