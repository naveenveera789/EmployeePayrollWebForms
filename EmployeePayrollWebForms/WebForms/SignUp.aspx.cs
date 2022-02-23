﻿using System;
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
            if(CheckBox2.Checked)
            {
                TextBox4.TextMode = TextBoxMode.SingleLine;
                TextBox5.TextMode = TextBoxMode.SingleLine;
            }
            else
            {
                TextBox4.TextMode = TextBoxMode.Password;
                TextBox5.TextMode = TextBoxMode.Password;
            }
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
            int ReturnCode = (int)command.ExecuteScalar();
            if(ReturnCode == -1)
            {
                Label1.Text = "Email Id already exists, Please use another Email";
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
            this.connection.Close();
        }
    }
}