/*login validation*/

var uname = document.forms['loginForm']['uname'];
var password= document.forms['loginForm']['password'];

var Username_error= document.getElementById('Username_error');
var password_error= document.getElementById('password_error');

uname.addEventListener('textInput',uname_verify);
password.addEventListener('textInput',password_verify);

function validated()
{
    if(uname.value.length < 9)
    {
        uname.style.border = "1px solid red";
        uname.error.style.display = "block";
        uname.focus();
        return false;
    }
    if(password.value.length < 9)
    {
        password.style.border = "1px solid red";
        password.error.style.display = "block";
        password.focus();
        return false;
    }
} 

function uname_verify()
{
    if(uname.value.length >= 8)
    {
        uname.style.border = "1px solid silver";
        uname.error.style.display = "none";
        return true;
    }
}

function password_verify()
{
    if(password.value.length >=5 )
    {
        password.style.border = "1px solid silver";
        password.error.style.display = "none";
        return true;
    }
}