using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Capium
{
    public partial class Homepage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ConnectionString);
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        public bool ITEMS(string query)
        {
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Product_ID", txtpid.Text);
            cmd.Parameters.AddWithValue("@Product_name", txtpname.Text);
            cmd.Parameters.AddWithValue("@Product_Price", txtprice.Text);
            cmd.Parameters.AddWithValue("@Product_Quantity", txtquantity.Text);

            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if(i==0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string query = "insert into capiumproducts values (@Product_ID , @Product_Name , @Product_Price , @Product_Quantity)";

            if(ITEMS(query))
            {
                lblRes.Text = "Record Inserted";
            }
            else
            {
                lblRes.Text = "Record Not Inserted";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string query = "update capiumproducts set  Product_Name=@Product_Name , Product_Price=@Product_Price , Product_Quantity=@Product_Quantity where Product_ID=@Product_ID";
            if(ITEMS(query))
            {
                lblRes.Text = "Record Updated";
            }
            else
            {
                lblRes.Text = "Record Not Updated";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("Delete from capiumproducts where Product_Id=" + txtpid.Text, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if(i==0)
            {
                lblRes.Text = "No Record to Delete";
            }
            else
            {
                lblRes.Text = i + "Record(s) Deleted";
            }
        }
    }
}