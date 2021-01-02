using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Project_02
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtfname.Text = "";
            txtDetails.Text = "";
            txtLocation.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (txtfname.Text.Equals("") || txtDetails.Text.Equals("") || !imageUpload.HasFile || txtLocation.Text.Equals(""))
            {
                lblError.Text = "Please enter your information!";
            }
            else
            {
                int length = imageUpload.PostedFile.ContentLength;
                byte[] pic = new byte[length];
                imageUpload.PostedFile.InputStream.Read(pic, 0, length);
                


                try
                {
                    string conStr = ConfigurationManager.ConnectionStrings["farmer"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(conStr))
                    {
                        con.Open();
                        string queryStr = "INSERT INTO harvest_detail VALUES (@fname, @details, @location, @images)";
                        using (SqlCommand cmd = new SqlCommand(queryStr, con))
                        {
                            cmd.Parameters.AddWithValue("fname", txtfname.Text);
                            cmd.Parameters.AddWithValue("details", txtDetails.Text);
                            cmd.Parameters.AddWithValue("location", txtLocation.Text);
                            cmd.Parameters.AddWithValue("@images", pic);

                            cmd.ExecuteNonQuery();
                        }
                        con.Close();
                    }
                }
                catch (SqlException ee)
                {
                    lblError.Text = "Sql Error Occured! " + ee;
                }
                catch (Exception ex)
                {
                    lblError.Text = "Error Occured! " + ex;
                }
                finally
                {

                }
            }
                
            
        }
    }
}