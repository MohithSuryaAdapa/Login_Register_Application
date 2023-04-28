using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Capium
{
    public partial class RegistrationWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }                     
        protected void rdmale_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void rdfemale_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void txtfirstname_TextChanged(object sender, EventArgs e)
        {

        }
        protected void btnregister_Click1(object sender, EventArgs e)
        {
            string FirstName = txtfirstname.Text;
            string LastName = txtlastname.Text;
            string Gender = RadioButtonList1.SelectedValue;
            string Courses = DropDownList1.SelectedValue;
            string Email_ID = txtemailid.Text;
            string password = txtpassword.Text;
            string Phonenumber = txtnumber.Text;


            SqlConnection connection  = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ConnectionString);
            SqlConnection con = new SqlConnection();
            //SqlCommand command = new SqlCommand();
          
            string query = "INSERT INTO capiummembers (FirstName, LastName, Gender, Courses, Email_ID, Password, phoneNumber) VALUES (@FirstName, @LastName, @Gender, @Courses, @Email_ID, @Password, @PhoneNumber)";
            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@FirstName", FirstName);
            command.Parameters.AddWithValue("@LastName", LastName);
            command.Parameters.AddWithValue("@Gender", Gender);
            command.Parameters.AddWithValue("@Courses", Courses);
            command.Parameters.AddWithValue("@Email_ID", Email_ID);
            command.Parameters.AddWithValue("@Password", password);
            command.Parameters.AddWithValue("@Phonenumber", Phonenumber);

            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("LoginWebForm.aspx");

        }

    }
}


