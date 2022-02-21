using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace EmployeePayrollWebForms.WebForms
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
            //Server.Transfer();
        }

        static string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("LogInCredentials", this.connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@Email", TextBox1.Text);
            command.Parameters.AddWithValue("@Password", TextBox2.Text);
            this.connection.Open();
            var datareader = command.ExecuteReader();
            /*SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet, "EmployeeDetails");*/
            if (datareader != null)
            {
                Session["data"] = datareader;
                //Application["data"] = dataSet;
                Response.Redirect("HomePage.aspx");
                //GridView1.DataSource = datareader;
                //GridView1.DataBind();
                //Label1.Text = "!!! Log in Succesful !!!";
                //Label1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label1.Text = "!!! Log in credentials are not in the database !!!";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            this.connection.Close();
            //Session["email"] = TextBox1.Text;
            //Session["password"] = TextBox2.Text;
            //Response.Redirect("HomePage.aspx");
        }
    }
}