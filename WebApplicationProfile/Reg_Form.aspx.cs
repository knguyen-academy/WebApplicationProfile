using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationProfile
{
    public partial class Reg_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Reg_MultiView.ActiveViewIndex = 0;
            }
        }


        protected void Next_Button_Click(object sender, EventArgs e)
        {
            Reg_MultiView.ActiveViewIndex = 1;
        }

        protected void Previous_Button_Click(object sender, EventArgs e)
        {
            Reg_MultiView.ActiveViewIndex = 0;
        }

        protected void FirstName_TextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Cancel_Button_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login_Form.aspx");
        }
    }
}