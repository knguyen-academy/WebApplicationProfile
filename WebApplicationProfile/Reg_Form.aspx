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
                <input id="FirstName_TextBox" runat="server" type="text" placeholder="First name" />
                <br />
                <input id="LastName_TextBox" runat="server" type="text" placeholder="Last name" />
                <br />
                <asp:DropDownList ID="Gender_DropDownList1" runat="server">

                    <asp:ListItem Value="-1">Gender</asp:ListItem>
                    <asp:ListItem Value="M">Male</asp:ListItem>
                    <asp:ListItem Value="F">Female</asp:ListItem>

                </asp:DropDownList>
                <br />
                <input id="Phone_TextBox" runat="server" type="text" placeholder="Phone" />
                <br />
                <input id="Username_TextBox" runat="server" type="text" placeholder="User name" />
                <br />
                <input id="Password_TextBox" runat="server" type="password" placeholder="Password" />
                <br />
                <input id="ConfirmPW_TextBox" runat="server" type="password" placeholder="Confirm Password" />
                <br />

                <asp:Button ID="Next_Button" runat="server" Text="  Next  " OnClick="Next_Button_Click" />
                <asp:Button ID="Cancel_Button" runat="server" Text="Cancel" OnClick="Cancel_Button_Click" />
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

                </table>
                <br />
                <asp:Button ID="Previous_Button" runat="server" Text="Previous" OnClick="Previous_Button_Click" />
                <asp:Button ID="Signup_Button" runat="server" Text="Sign Up" OnClick="Signup_Button_Click" />
            </asp:View>
        </asp:MultiView>


    </form>


    <%------------------JS script for phone mask-------------------%>
    <script>
        $(document).ready(function () {

            $("#Phone_TextBox").keypress(function () {
                $(this).inputmask("(999) 999-9999");
            });
        });

    </script>
</body>
</html>
