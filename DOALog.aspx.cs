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
    public partial class DOALog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtPass.Text = "";
            txtUname.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string uname = txtUname.Text;
            string pass = txtPass.Text;

            if (txtPass.Text.Equals("") || txtUname.Text.Equals(""))
            {
                lblError.Text = "Please enter information..!!";
            }
            else
            {
                try
                {
                    string conStr = ConfigurationManager.ConnectionStrings["farmer"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(conStr))
                    {
                        con.Open();
                        string queryStr = "SELECT * FROM staff WHERE uname = '" + uname + "' AND pass = '" + pass + "'";
                        using (SqlCommand cmd = new SqlCommand(queryStr, con))
                        {
                            SqlDataReader sdr = cmd.ExecuteReader();
                            if (sdr.Read())
                            {
                                Response.Redirect("https://localhost:44304/ViewGraphReports");
                            }
                            else
                            {
                                lblError.Text = "Username & Password Is not correct Try again..!!";
                            }
                        }
                    }
                }
                catch (SqlException ex)
                {
                    lblError.Text = "Sql Error Occured..!! " + ex;
                }
                catch (Exception ey)
                {
                    lblError.Text = "Error Occured..!! " + ey;
                }
                finally
                {

                }
            }



        }
    }
}