/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */





function validate(){

    var password = document.getElementById("pass");
    var adm = document.getElementById("admin1");


    if ( adm.value == "shankar" && password.value == "admin")
    {
            alert("Login Succesfull");
            window.location.replace("after user login.html");



    }

    else{
      alert("Login failed");
    }
}

