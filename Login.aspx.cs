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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            txtPassword.Text = "";
            txtID.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string id = txtID.Text;
            string password = txtPassword.Text;

            if(txtID.Text.Equals("") || txtPassword.Text.Equals(""))
            {
                lblError.Text = "Please enter information....!!";
            }
            else
            {
                try
                {
                    string conStr = ConfigurationManager.ConnectionStrings["farmer"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(conStr))
                    {
                        con.Open();
                        string queryStr = "SELECT * FROM farmer WHERE national_id = '" + id + "' AND password = '" + password + "'";
                        using (SqlCommand cmd = new SqlCommand(queryStr, con))
                        {
                            SqlDataReader sdr = cmd.ExecuteReader();
                            if (sdr.Read())
                            {
                                Response.Redirect("https://localhost:44304/About");
                            }
                            else
                            {
                                lblError.Text = "UserId & Password Is not correct Try again..!!";

                            }
                        }
                    }
                }
                catch (SqlException ex)
                {
                    lblError.Text = "Sql Error Occured! " + ex;
                }
                catch (Exception ee)
                {
                    lblError.Text = "Error Occured! " + ee;
                }
                finally
                {

                }
            }

            
        }
    }
}