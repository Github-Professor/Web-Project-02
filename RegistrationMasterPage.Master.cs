using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Project_02
{
    public partial class RegistrationMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtAge.Text = "";
            txtDistrict.Text = "";
            txtMobile.Text = "";
            txtName.Text = "";
            txtNationalID.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtAge.Text.Equals("") || txtDistrict.Text.Equals("") || txtMobile.Text.Equals("") || txtName.Text.Equals("") || txtNationalID.Text.Equals("") || txtPassword.Text.Equals("") || txtConfirmPassword.Text.Equals(""))
            {
                lblError1.Text = "Please enter information!";
            }
            else
            {
                // Put the regular expressions here.......
                try
                {
                    string conStr = ConfigurationManager.ConnectionStrings["farmer"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(conStr))
                    {
                        con.Open();
                        string queryStr = "INSERT INTO farmer VALUES (@national_id, @name, @age, @district, @mobile, @password)";
                        using (SqlCommand cmd = new SqlCommand(queryStr, con))
                        {
                            cmd.Parameters.AddWithValue("national_id", txtNationalID.Text);
                            cmd.Parameters.AddWithValue("name", txtName.Text);
                            cmd.Parameters.AddWithValue("age", txtAge.Text);
                            cmd.Parameters.AddWithValue("district", txtDistrict.Text);
                            cmd.Parameters.AddWithValue("mobile", txtMobile.Text);
                            cmd.Parameters.AddWithValue("password", txtPassword.Text);

                            cmd.ExecuteNonQuery();

                            Response.Redirect("https://localhost:44304/Login");

                        }
                        con.Close();
                    }
                }
                catch (SqlException)
                {
                    lblError.Text = "National ID is Already Used!";
                }
                catch (Exception ex)
                {
                    lblError1.Text = "Error Occured! " + ex;
                }
                finally
                {

                }
            }
            
            
        }
    }
}