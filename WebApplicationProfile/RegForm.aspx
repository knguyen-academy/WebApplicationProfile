<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegForm.aspx.cs" Inherits="WebApplicationProfile.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reg Form</title>
     <link rel="stylesheet" runat="server" media="screen" href="~/Styles/RegFormStyle.css" />
</head>
<body>
<!-- LOGIN FORM  -->
 <div class="quote">  "Success is not final; failure is not fatal. It is the courage to continue that counts." Winston S. Churchill        </div>
    <div id='id00' class="loginContainer">
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
			<p class="hlink"><b><a onclick="bringUp()" href="#">New user?</a></b></p>
		</form>
	</div>
	<div class="footer">
	<p><a href="http://google.com" target="_blank">Created by @KNguyen</a></p>
	</div>


    <!-- SIGN UP FORM -->
   <!-- Modal tab1 -->
    <div id="id01" class="modal">
        <!-- Form -->
        <form id="signupStep" class="formSignup tab1">
            <!-- Form container -->
            <div id = 'id02'class="singupContainer">

                <h2>Sign Up</h2>
                <p>Please fill in this form to create an account</p>
                <hr>
                <input id="FirstName_TextBox" type="text" placeholder="First Name" />
                <input id="LastName_TextBox" type="text" placeholder="Last Name" />
                <select id="Gender_DropDownList1" runat="server">
                    <option value="-1">Gender</option>
                    <option value="1">Male</option>
                    <option value="2">Female</option>
                </select>
                <input id="Phone_TextBox" runat="server" type="text" placeholder="Phone" />
                <input id="Text1" runat="server" type="text" placeholder="Username" />
                <input id="Email_TextBox" runat="server" type="text" placeholder="Email" />
                <input id="Password1" runat="server" type="password" placeholder="Password" />
                <input id="ConfirmPW_TextBox" runat="server" type="password" placeholder="Confirm Password" />
                <p>By creating an account you agree to our
                    <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
                <div>
                    <input id="Next_Button" onclick="nextForm()" type="button" value="Next" runat="server" />
                    <input id="Cancel_Button" onclick="bringDown()" type="button" value="Cancel" runat="server" />
                </div>
            </div>
            <!-- container -->
        </form>

        <div id="confirmStep" class="formSignup tab2">
            <h2>Confirm</h2>
            <p>Please fill in this form to create an account</p>
            <div class="singupContainer">
                <p><span>First name: </span> <span id="fn" runat="server"></span></p>
                <p>Last name: </p>
                <p>Phone: </p>
                <p>Gender: </p>
                <p>Username: </p>
                <p>Email: </p>
                <div>
                    <input id="Prev_Button" onclick="prevForm()" type="button" value="Previous" runat="server" />
                    <input id="Confirm_Button" onclick="confirmForm()" type="button" value="Confirm" runat="server" />
                </div>
            </div>
        </div>
        <!-- modal -->



    <!-- Javascripts -->
    <script src="../Scripts/RegFormJS.js"></script>
    
</body>
</html>
