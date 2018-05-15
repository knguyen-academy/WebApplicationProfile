<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplicationProfile.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" runat="server" media="screen" href="~/Styles/Admin.css" />
</head>
    
<body>
    <div><h1>Admin Page</h1></div>
    <form id="form1" runat="server">
        <div>
            <asp:PlaceHolder ID = "PlaceHolder1" runat="server" />
        </div>
    </form>
</body>
</html>
