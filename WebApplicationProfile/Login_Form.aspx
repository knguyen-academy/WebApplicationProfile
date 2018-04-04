<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Form.aspx.cs" Inherits="WebApplicationProfile.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 235px;
            width: 1278px;
        }

        .auto-style1 {
            height: 26px;
        }

        .auto-style2 {
            width: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <h3>Login Page</h3>
        </div>
        <table style="width: 357px; height: 143px">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Username_TextBox" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="UserRequiredFieldValidator" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="Username_TextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="Password_TextBox" runat="server" EnableViewState="False" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="PasswordFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="Password_TextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left">
                    <asp:Button ID="Login_Button" runat="server" Text="Login" OnClick="Login_Button_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Not a member?"></asp:Label>
                </td>

                <td>
                    <asp:LinkButton ID="Reg_Button" runat="server" OnClick="Reg_Button_Click" CausesValidation="False">Get new account</asp:LinkButton>
                </td>
                 </table>

                    <asp:Label ID="Login_Label" runat="server" Text=""></asp:Label>

       
    </form>
</body>
</html>
