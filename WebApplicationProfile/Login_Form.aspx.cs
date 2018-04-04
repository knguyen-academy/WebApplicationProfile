using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplicationProfile
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Login_Button_Click(object sender, EventArgs e)
        {
            
            int count;

            //Use connection string defined in Web.config
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            if (Page.IsValid)
            {

                // Good practice, using block connection, so that it will close connection 
                // automatically after execute the query -> scalable 
                using (SqlConnection con = new SqlConnection(CS))
                {
                    //Init Defined Store Procedure (see SQLMS ) with output return value
                    SqlCommand cmd = new SqlCommand("GetCredentials", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", Username_TextBox.Text);
                    cmd.Parameters.AddWithValue("@Password", Password_TextBox.Text);

                    // Init output
                    SqlParameter result = new SqlParameter();
                    result.ParameterName = "@result";
                    result.SqlDbType = SqlDbType.Int;
                    result.Direction = ParameterDirection.Output;
                    cmd.Parameters.Add(result);

                    //Open connection and execute the SP
                    con.Open();
                    cmd.ExecuteNonQuery();

                    //SP return count
                    count = (int)result.Value;

                    //If found credentials, meaning count =1
                    if (count == 1)
                    {
                        Login_Label.Text = "User and password is corrected";
                        Login_Label.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        Login_Label.Text = "You have entered an invalid username or password";
                        Login_Label.ForeColor = System.Drawing.Color.Red;
                    }
                       
                }
            }
        }

        protected void Reg_Button_Click(object sender, EventArgs e)
        {
            Server.Transfer("Reg_Form.aspx");
        }
    }
}