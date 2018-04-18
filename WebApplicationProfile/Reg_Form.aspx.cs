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
            //Show Summary page
            Reg_MultiView.ActiveViewIndex = 1;
            Name_Label.Text = FirstName_TextBox.Value + " " + LastName_TextBox.Value;
            Gender_Label.Text = Gender_DropDownList1.Value;
            Phone_Label.Text = Phone_TextBox.Value;
            Username_Label.Text = Username_TextBox.Value;
            Email_Label.Text = Email_TextBox.Value;


        }

        protected void Previous_Button_Click(object sender, EventArgs e)
        {
            Reg_MultiView.ActiveViewIndex = 0;
        }

        protected void Cancel_Button_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login_Form.aspx");
        }

        protected void Signup_Button_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            //int Empid;

            //// Insert into CUSTOMER table and output ID_out to insert to CUSTOMER_AUTH
            //using (SqlConnection con = new SqlConnection(CS))
            //{
            //    SqlCommand cmd = new SqlCommand("RegCustomerIDOutput", con);
            //    cmd.CommandType = CommandType.StoredProcedure;
            //    cmd.Parameters.AddWithValue("@First", FirstName_TextBox.Value);
            //    cmd.Parameters.AddWithValue("@Last", LastName_TextBox.Value);
            //    cmd.Parameters.AddWithValue("@Gender", Gender_DropDownList1.SelectedValue);
            //    cmd.Parameters.AddWithValue("@Phone", Phone_TextBox.Value);
   
            //    SqlParameter ID_out = new SqlParameter("@ID", SqlDbType.Int);
            //    ID_out.Direction = ParameterDirection.Output;

            //    cmd.Parameters.Add(ID_out);

            //    con.Open();
            //    cmd.ExecuteNonQuery();

            //    Empid = Convert.ToInt32(ID_out.Value);
                
            //}


            // User ID_out to insert into CUSTOMER_AUTH

                int userId = 0;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("RegNewUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@First", FirstName_TextBox.Value);
                    cmd.Parameters.AddWithValue("@Last", LastName_TextBox.Value);
                    cmd.Parameters.AddWithValue("@Gender", Gender_DropDownList1.Value);
                    cmd.Parameters.AddWithValue("@Phone", Phone_TextBox.Value);
                    cmd.Parameters.AddWithValue("@Username", Username_TextBox.Value);
                    cmd.Parameters.AddWithValue("@Email", Email_TextBox.Value);
                    cmd.Parameters.AddWithValue("@Password", Password_TextBox.Value);
                    con.Open();
                    //cmd.ExecuteNonQuery();
                    userId = Convert.ToInt32(cmd.ExecuteScalar());
                 
                }
                string message = string.Empty;
                switch (userId)
                {
                    case -1:
                        message = "Username already exists.\\nPlease choose a different username.";
                        break;
                    case -2:
                        message = "Supplied email address has already been used.";
                        break;
                    default:
                        message = "Registration successful.\\nUser Id: " + userId.ToString();
                        break;
                }
                Response.Write(message);

           
        }

    }
}