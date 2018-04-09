<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplicationProfile.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <script type="text/javascript" src="Scripts/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery.maskedinput.min.js"></script>
       <script>

      

           $(document).ready(function () {

               function CreateWatermark(obj, text) {

                   
                   //$("#" + obj.id).val(text)
                   //$("#" + obj.id).addClass('defaultText');
               }
               function RemoveWatermark(obj, text) {
                   $("#" + obj.id).val(text);
                   //$("#" + obj.id).removeClass('defaultText');
               }

              
             
               CreateWatermark($("#txtBox1")[0], "Phone");
             

               $("#txtBox1").on("blur", function () {
                
                   RemoveWatermark(this, "On blur")
               });
               $("#txtBox1").on("focus", function () {

                   RemoveWatermark(this, "")
               });


           
           });
           
    </script>


    <title></title>
</head>
<body>

   <label>Textbox1</label>
    <input id="txtBox1" />

    <input id="txtBox2" />

    <form id="form1" runat="server">
        <div class="TextBoxID">
            <asp:TextBox ID="TextBox1" runat="server">Phone</asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
