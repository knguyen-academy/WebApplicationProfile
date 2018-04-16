<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg_Form.aspx.cs" Inherits="WebApplicationProfile.Reg_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%------------------Javascript library-------------------%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://rawgit.com/RobinHerbots/jquery.inputmask/3.x/dist/jquery.inputmask.bundle.js"></script>
    <title>Reg Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>THIS IS REG FORM</h2>
        </div>

        <%--MultiView Section--%>
        <asp:MultiView ID="Reg_MultiView" runat="server">

            <%------------------UserInfo_View-------------------%>
            <asp:View ID="UserInfo_View" runat="server">
                <form id="Form1" >
                <input id="FirstName_TextBox" runat="server" type="text" placeholder="First name" maxlength = "20" required/>
                <br />
                <input id="LastName_TextBox" runat="server" type="text" placeholder="Last name" maxlength = "20" required/>
                <br />
                <select id="Gender_DropDownList1" runat="server" required>
                      <option value="">Gender</option>
                      <option value="M">Male</option>
                      <option value="F">Female</option>
               
                </select>
          
                <br />
                <input id="Phone_TextBox" runat="server" type="text" placeholder="Phone" />
                <br />
                <input id="Username_TextBox" runat="server" type="text" placeholder="User name" maxlength = "20" required/>
                <br />
                <input id="Email_TextBox" runat="server" type="text" placeholder="Email" maxlength = "20" required/>
                <br/>
                <input id="Password_TextBox" runat="server" type="password" placeholder="Password" 
                    pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                    title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required/>
                <br />
                <input id="ConfirmPW_TextBox" runat="server" type="password" placeholder="Confirm Password" required/>
                    <asp:CompareValidator ID="CompareValidatorPW" runat="server"
                        ErrorMessage="Password not match" Forecolor="Red"
                        ControlToValidate="ConfirmPW_TextBox" ControlToCompare="Password_TextBox" 
                        Operator="Equal" Type="String"> </asp:CompareValidator>
                <label id="responseMess" style="color:red; font-weight:bold"></label>
                <br />
                
                <asp:Button ID="Next_Button" runat="server" Text="  Next  " OnClick="Next_Button_Click" />
                <asp:Button ID="Cancel_Button" runat="server" Text="Cancel" OnClick="Cancel_Button_Click" formnovalidate />
                </form>
            </asp:View>


            <%------------------Summary_View-------------------%>
            <asp:View ID="Summary_View" runat="server">
                Summary:<br />
                <br />
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Name" runat="server" Text="User    :"></asp:Label>
                        </td>

                        <td>
                            <asp:Label ID="Name_Label" runat="server" Text=""></asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Gender  :"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Gender_Label" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Phone   :"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Phone_Label" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Username:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Username_Label" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Email_Label" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="Previous_Button" runat="server" Text="Previous" OnClick="Previous_Button_Click " />
                <asp:Button ID="Signup_Button" runat="server" Text="Sign Up" OnClick="Signup_Button_Click"  type="submit" />
            </asp:View>
        </asp:MultiView>


    </form>

    <%------------------SCRIPTS-------------------%>
    <script>
        <%------------------JS script for phone mask-------------------%>
    
        $(document).ready(function () {

            $("#Phone_TextBox").keypress(function () {
                $(this).inputmask("(999) 999-9999");
            });

        <%------------------JS script for Confirmpass-------------------%>
            //$("#ConfirmPW_TextBox").blur(function () {
            //    var pw = $("#ConfirmPW_TextBox").val();
            //    var confirmPW = $("#Password_TextBox").val();
            //    //var messID = $("#responseMess");
            //    if (pw != confirmPW) {
            //        //messID.title = "test";
            //        //title = "Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
            //        //alert("Not equal");
            //        $("#responseMess").html("Password is not matched");
            //        //document.getElementById('Next_Button').disabled = true;
            //        //$("#Next_Button").prop('disabled', true);​
            //       // $("#ConfirmPW_TextBox").attr('title', 'your value');

            //    }
            //});


        });

    </script>
</body>
</html>
