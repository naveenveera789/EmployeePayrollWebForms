<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EmployeePayrollWebForms.WebForms.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/SignUp.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sec4">
    <div>
        <h5>Create an account</h5>
    </div>
    <div>
        <p>to continue to Employee Payroll</p>
    </div>
    <div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name Required" ControlToValidate="TextBox2" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter correct First name" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="[A-Z]{1}[a-z]{2,}"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last name Required" ControlToValidate="TextBox3" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter correct Last name" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[A-Z]{1}[a-z]{2,}"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox2" type="text" placeholder="First name" name="firstname" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox3" type="text" placeholder="Last name" name="lastname" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email Required" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter correct Email" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="[a-z0-9]+(.[a-z0-9]+)?@[a-z]+[.][a-z]{3}"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox1" placeholder="Enter Email" type="text" name="username" runat="server" Width="438px"></asp:TextBox>
    </div>
    <div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password Required" ControlToValidate="TextBox4" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Strong Password" ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="(?=.*[A-Z]).{8,}"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password Required" ControlToValidate="TextBox5" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter Strong Password" ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="(?=.*[A-Z]).{8,}"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox4" type="password" placeholder="Password" name="password" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox5" type="password" placeholder="Confirm" name="confirm" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:CheckBox ID="CheckBox2" type="checkbox" Text="Show Password" runat="server" />
    </div>
    <br />
    <div>
        <asp:LinkButton ID="LinkButton1" style="text-decoration:none" OnClick="LinkButton1_Click" runat="server" EnableTheming="True">Sign in instead</asp:LinkButton>
        &emsp; &emsp; &emsp;&emsp; &emsp; &emsp;&emsp; &emsp; &emsp;&emsp; &emsp; &emsp;&emsp;
        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Sign Up" />
    </div>
    </div>
</asp:Content>
