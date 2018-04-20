<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Form.aspx.cs" Inherits="WebApplicationProfile.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link rel="stylesheet" runat="server" media="screen" href="~/Styles/login-Style.css" />

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
