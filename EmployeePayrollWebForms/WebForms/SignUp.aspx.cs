using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayrollWebForms.WebForms
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string Password = TextBox4.Text;
                string Confirm = TextBox5.Text;
                TextBox4.Attributes.Add("value", Password);
                TextBox5.Attributes.Add("value", Confirm);
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if(CheckBox2.Checked == true)
            {
                TextBox4.TextMode = TextBoxMode.SingleLine;
                TextBox5.TextMode = TextBoxMode.SingleLine;
            }
            if(CheckBox2.Checked == false)
            {
                TextBox4.TextMode = TextBoxMode.Password;
                TextBox5.TextMode = TextBoxMode.Password;
            }
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
        }
    }
}