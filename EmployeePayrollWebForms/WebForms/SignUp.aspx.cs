using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

namespace EmployeePayrollWebForms.WebForms
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            /*if(CheckBox2.Checked == true)
            {
                TextBox4.TextMode = TextBoxMode.SingleLine;
                TextBox5.TextMode = TextBoxMode.SingleLine;
            }
            if(CheckBox2.Checked == false)
            {
                TextBox4.TextMode = TextBoxMode.Password;
                TextBox5.TextMode = TextBoxMode.Password;
            }*/
            /*string passwordText = null, confirmPassText = null;
            if (CheckBox2.Checked)
            {
                TextBox4.TextMode = TextBoxMode.SingleLine;
                passwordText = TextBox4.Text;
                TextBox5.TextMode = TextBoxMode.SingleLine;
                confirmPassText = TextBox5.Text;
            }
            else
            {
                TextBox4.TextMode = TextBoxMode.Password;
                TextBox4.Text = passwordText;
                TextBox5.TextMode = TextBoxMode.Password;
                TextBox5.Text = confirmPassText;
            }*/
            /*if(ViewState["password"]!=null)
            {
                TextBox4.Text = ViewState["password"].ToString();
            }
            if(ViewState["confirm"]!=null)
            {
                TextBox5.Text = ViewState["confirm"].ToString();
            }*/
        }

        static string connectionString = ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("SignUpDetails", this.connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@FirstName", TextBox2.Text);
            command.Parameters.AddWithValue("@LastName", TextBox3.Text);
            command.Parameters.AddWithValue("@Email", TextBox1.Text);
            command.Parameters.AddWithValue("@Phone", TextBox6.Text);
            command.Parameters.AddWithValue("@Password", TextBox4.Text);
            this.connection.Open();
            var result = command.ExecuteNonQuery();
            if(result != 0)
            {
                Label1.Text = "!!! Account Details inserted succesfully into the database !!!";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label1.Text = "!!! Details are not inserted into the database !!!";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            this.connection.Close();
        }
    }
}