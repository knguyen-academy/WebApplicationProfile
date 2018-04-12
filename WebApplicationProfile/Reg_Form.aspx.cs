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
            Gender_Label.Text = Gender_DropDownList1.Text;
            Phone_Label.Text = Phone_TextBox.Value;
            Username_Label.Text = Username_TextBox.Value;


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

        protected void Signup_Button_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            int Empid;

            // Insert into CUSTOMER table and output ID_out to insert to CUSTOMER_AUTH
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("RegCustomerIDOutput", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@First", FirstName_TextBox.Value);
                cmd.Parameters.AddWithValue("@Last", LastName_TextBox.Value);
                cmd.Parameters.AddWithValue("@Gender", Gender_DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@Phone", Phone_TextBox.Value);
   
                SqlParameter ID_out = new SqlParameter("@ID", SqlDbType.Int);
                ID_out.Direction = ParameterDirection.Output;

                cmd.Parameters.Add(ID_out);

                con.Open();
                cmd.ExecuteNonQuery();

                Empid = Convert.ToInt32(ID_out.Value);
                
            }


            // User ID_out to insert into CUSTOMER_AUTH
            try
            {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("RegUserAuthByID", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@User_id", Empid);
                    cmd.Parameters.AddWithValue("@Username", Username_TextBox.Value);
                    cmd.Parameters.AddWithValue("@Password", Password_TextBox.Value);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("Inserted");
                }
            }
            catch
            {
                Response.Write("User name is duplicated");
            }
           
        }

    }
}