using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Capium
{
    public partial class LoginWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ConnectionString);
            string query = $"select count (*) from capiummembers where Email_ID='{txtusername.Text}' and Password='{txtpassword.Text}'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int recordCount = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            if (recordCount != 0)
            {
                Response.Redirect("~/Homepage.aspx");

            }
            else
            {
                lblres.ForeColor = System.Drawing.Color.Red;
                lblres.Text = "Invalid Credentaials";
            }
        }

        protected void NewRegistrationLinl_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationWebForm.aspx");
        }
    }
}
