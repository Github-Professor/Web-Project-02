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
    public partial class KellsRegistration : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            txtfname.Text = "";
            txtlname.Text = "";
            txtage.Text = "";
            txtmn.Text = "";
            txtuname.Text = "";
            txtpass.Text = "";
            txtcpass.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtage.Text.Equals("") || txtcpass.Text.Equals("") || txtfname.Text.Equals("") || txtlname.Text.Equals("") || txtmn.Text.Equals("") || txtpass.Text.Equals("") || txtuname.Text.Equals(""))
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
                        string queryStr = "INSERT INTO staff VALUES(@uname, @fname, @lname, @age, @mn, @pass)";
                        using (SqlCommand cmd = new SqlCommand(queryStr, con))
                        {
                            cmd.Parameters.AddWithValue("fname", txtfname.Text);
                            cmd.Parameters.AddWithValue("lname", txtlname.Text);
                            cmd.Parameters.AddWithValue("age", txtage.Text);
                            cmd.Parameters.AddWithValue("mn", txtmn.Text);
                            cmd.Parameters.AddWithValue("uname", txtuname.Text);
                            cmd.Parameters.AddWithValue("pass", txtpass.Text);

                            cmd.ExecuteNonQuery();

                            lblError.Text = "Registration Successfull..!!";
                        }
                        con.Close();
                    }
                }
                catch (SqlException ex)
                {
                    lblError.Text = "Sql Error Occured! " + ex;
                }
                catch (Exception ey)
                {
                    lblError.Text = "Error Occured! " + ey;
                }
                finally
                {

                }
            }
                                  
            
        }
    }
}