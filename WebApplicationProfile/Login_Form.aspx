<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Form.aspx.cs" Inherits="WebApplicationProfile.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style type="text/css">
body{
margin:0;
padding:0;
font-family:sans-serif;
background-image:url(../Images/Background/login_bg.jpg);
}

h1{
margin-top:50px;
text-align:center;
font-size:40px;
padding: 0 0 20px;
}

.avatar{
width:130px;
height:130px;
border-radius:50%;
position:absolute;
top:-80px;
left:140px;
opacity:0.8;
}

.quote
{
display:none;
width:220px;
height:500px;
position:absolute;
margin-left:10%;
margin-top:10%;
margin-right:75%;
font-size:30px;
color:white;
letter-spacing: 5px;
padding:25px;
text-transform:capitalize;
text-shadow: 3px 2px black;
font-family:Comic Sans MS;
}

.container{
color:#fff;
width:420px;
height:650px;
position:absolute;

background: rgba(255,255,255, 0.2);
top:50%;
left:50%;
transform:translate(-50%,-50%);
padding: 30px 30px;
box-sizing: border-box;

}

.container input
{
width:100%;
box-sizing: border-box;
margin-bottom:25px;
}

.container input[type="text"],input[type="password"]
{
color:#000;
font-size:20px;
border:none;
border-bottom: 1px solid #fff;
background:transparent;
height:40px;
outline:none;
}

.container input[type="text"]:focus, input[type="password"]:focus {
border-bottom:1px solid #1c8adb;

}
.container input[type="text"]::placeholder,input[type="password"]::placeholder
{
color:black ;
font-weight:initial;
font-size:14px;
}


.container input[type="submit"]
{
height:40px;
outline:none;
border:none;
background: #1c8adb;
opacity: 0.7;
color: #fff;
font-size:18px;
border-radius: 10px;
}


.container input[type="submit"]:hover
{
cursor:pointer;
opacity: 1;
color:#000;
}

.container a
{
margin:auto;
text-decoration: none;
font-size:17px;
color:#fff;
opacity: 0.5;
}

.container a:hover
{
opacity: 1;
}

#errorMessage
{
    color:red;
    padding-bottom:10px;
}
.title
{
font-weight:bold;
font-size:25px;
}

.hlink {
    padding-top:10px;
    text-align:center;
     }

.footer {
position:fixed;
bottom:0px;
right:10px;
width:100%;
text-align: right;
}

.footer a{
text-decoration: none;
color:#fff;
}
    </style>
</head>
<body>
    <div class="quote">  "Success is not final; failure is not fatal. It is the courage to continue that counts." Winston S. Churchill        </div>
    <div class="container">
        <h1> Welcome </h1>
        <img class="avatar" src="http://spotterboard.com/uploads/avatars/default.jpg" />
        <form class="loginForm" runat="server">
            <p class="title"> Username </p>
            <input type="text" id="Username_TextBox" placeholder ="Enter your username" runat="server" required/>
			<p class ="title"> Password </p>
			<input type="password" id="Password_TextBox" placeholder="Enter your password" runat="server" required/>
             <div id="errorMessage" runat="server"></div>
			<input type="submit" name="btnSubmit" id="btnSubmit" value="Login" runat="server" onserverclick="Login_Button_Click" />
           
			<p class="hlink" ><b><a href="login.html" target="_blank">Forgot password?</a></b></p>
			<p class="hlink" ><b><a href="Reg_Form.aspx" target="_blank">New user?</a></b></p>
		</form>
	</div>
	<div class="footer">
	<p><a href="http://google.com" target="_blank">Created by @KNguyen</a></p>
	</div>
</body>
</html>
