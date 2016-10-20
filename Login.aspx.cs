using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void password_TextChanged(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string connectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Book"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);
        try
        {
            connection.Open();
            string comm = "select * from login where username = '" + userName.Text+"'";
            SqlCommand command = new SqlCommand(comm , connection);
            SqlDataReader myReader = command.ExecuteReader();
            string check = null;
            if (myReader.Read())
            {
                check = myReader["password"].ToString();
                if (check.Equals(password.Text))
                {
                    string type = myReader["type"].ToString();
                    if (type.Equals("cus"))
                    {
                        Response.Redirect("HomeCutomer.aspx");
                    }
                    else if(type.Equals("man"))
                    {
                        Response.Redirect("HomeManager.aspx");
                    }
                    else if(type.Equals("clk"))
                    {
                        Response.Redirect("HomeClerk.aspx");
                    }
                    else
                    {
                        Response.Redirect("HomeCutomer.aspx");
                    }
                }
                else
                {
                    testlbl.Text = "Invalid password";
                }
            }
            else
            {
                testlbl.Text = "Invalid username or password";
            }
            
            connection.Close();
        }
        catch (Exception err) 
        {
            testlbl.Text += err.ToString();
        }
    }
}