<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg_Form.aspx.cs" Inherits="WebApplicationProfile.Reg_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <%--Java script to remove/create watermark on textbox
        When Onfcus, call clearWatermark
        When off focus meaning onBlur, call createWatermark--%>
    <script type="text/javascript">
        function clearWaterMark(defaultText, textBoxControl)
        {
            if (textBoxControl.value == defaultText)
            {
                textBoxControl.value = "";
                textBoxControl.style.color = "black";
            }
        }

        function createWaterMark(defaultText, textBoxControl) {
            if (textBoxControl.value == "") {
                textBoxControl.value = defaultText;
                textBoxControl.style.color = "gray";
            }
        }
    </script>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>THIS IS REG FORM</h2>
        </div>
        <asp:MultiView ID="Reg_MultiView" runat="server">
            <asp:View ID="UserInfo_View" runat="server">
                   <%-- On Firstname textbox, call OnBlur and OnFocus javascript--%>
                <asp:TextBox ID="FirstName_TextBox" runat="server" ForeColor="Gray" 
                    OnBlur="createWaterMark('First name',this)" OnFocus="clearWaterMark('First name',this)">First name</asp:TextBox>
                <br />
                <asp:TextBox ID="LastName_TextBox" runat="server" ForeColor="Gray" 
                    OnBlur="createWaterMark('Last name',this)" OnFocus="clearWaterMark('Last name',this)">Last name</asp:TextBox>
                <br />
                <asp:DropDownList ID="Gender_DropDownList1" runat="server">

                    <asp:ListItem Value="-1">Gender</asp:ListItem>
                    <asp:ListItem Value="1">Male</asp:ListItem>
                    <asp:ListItem Value="2">Female</asp:ListItem>

                </asp:DropDownList>
                <br />

                <asp:TextBox ID="Phone_TextBox" runat="server" ForeColor="Gray" OnClick="Phone_TextBox_OnClick"
                    OnBlur="createWaterMark('Phone',this)" OnFocus="clearWaterMark('Phone',this)">Phone</asp:TextBox>
                <br />
                <asp:Button ID="Next_Button" runat="server" Text="  Next  " OnClick="Next_Button_Click" />
                <asp:Button ID="Cancel_Button" runat="server" Text="Cancel" OnClick="Cancel_Button_Click" />
            </asp:View>
            <asp:View ID="UserCredential_View" runat="server">
                <asp:TextBox ID="Username_TextBox" runat="server" ForeColor="Gray"
                    OnBlur="createWaterMark('User name',this)" OnFocus="clearWaterMark('User name',this)">User name</asp:TextBox>
                <br />
                <asp:TextBox ID="Password_TextBox" runat="server" ForeColor="Gray"
                    OnBlur="createWaterMark('Password',this)" OnFocus="clearWaterMark('Password',this)">Password</asp:TextBox>
                <br />
                <asp:TextBox ID="ConfirmPW_TextBox" runat="server" ForeColor="Gray"
                    OnBlur="createWaterMark('Confirm Password',this)" OnFocus="clearWaterMark('Confirm Password',this)">Confirm Password</asp:TextBox>
                <br />
                <asp:Button ID="Previous_Button" runat="server" Text="Previous" OnClick="Previous_Button_Click" />
                <asp:Button ID="Signup_Button" runat="server" Text="Sign Up" />
            </asp:View>
        </asp:MultiView>


    </form>
</body>
</html>
