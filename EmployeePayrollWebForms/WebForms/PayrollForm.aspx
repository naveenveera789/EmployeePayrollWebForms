<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="PayrollForm.aspx.cs" Inherits="EmployeePayrollWebForms.WebForms.PayrollForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/PayrollForm.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sec2">
        <form method="post">
        <div class="sec1">
            <h3>Employee Payroll Form</h3>
        </div>
        <br />
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            &emsp;&emsp;&emsp;&emsp;&emsp;&ensp;
            <asp:TextBox ID="TextBox1" type="text" name="Name" required="required" runat="server" Width="490px" ToolTip="Please Enter Name"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Profile image"></asp:Label>
            &ensp;
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" required="required" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl" ToolTip="Please Select Profile Image">
                <asp:ListItem> <img src="../Assets/profile-images/Female (1).png" alt="img1"/> </asp:ListItem>
                <asp:ListItem> <img src="../Assets/profile-images/Male (4).png" alt="img2"/></asp:ListItem>
                <asp:ListItem> <img src="../Assets/profile-images/Female (4).png" alt="img3"/></asp:ListItem>
                <asp:ListItem> <img src="../Assets/profile-images/Male (5).png" alt="img4"/></asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <br /><br />
        <div>
            <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            &emsp;&emsp;&nbsp;
            <asp:RadioButtonList ID="RadioButtonList2" required="required" runat="server" RepeatDirection="Horizontal" CellPadding="1" CellSpacing="1" RepeatLayout="Flow" CssClass="rbm" ToolTip="Please Select Your Gender">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <br />
        <div>
            <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>
            &emsp;
            <asp:CheckBoxList ID="CheckBoxList1" required="required" runat="server" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbn" ToolTip="Please Select Your Working Departments">
                <asp:ListItem>HR</asp:ListItem>
                <asp:ListItem>Sales</asp:ListItem>
                <asp:ListItem>Finance</asp:ListItem>
                <asp:ListItem>Engineer</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <br />
        <div>
            <asp:Label ID="Label5" runat="server" Text="Salary"></asp:Label>
            &emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" required="required" runat="server" Width="250px" Height="36px" ToolTip="Please Select Your Current Salary">
                <asp:ListItem>Select Salary</asp:ListItem>
                <asp:ListItem Value="10000">₹ 10,000</asp:ListItem>
                <asp:ListItem Value="12000">₹ 12,000</asp:ListItem>
                <asp:ListItem Value="15000">₹ 15,000</asp:ListItem>
                <asp:ListItem Value="18000">₹ 18,000</asp:ListItem>
                <asp:ListItem Value="20000">₹ 20,000</asp:ListItem>
                <asp:ListItem Value="22000">₹ 22,000</asp:ListItem>
                <asp:ListItem Value="25000">₹ 25,000</asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:Label ID="Label6" runat="server" Text="Start Date"></asp:Label>
            &emsp;&emsp;&emsp;&ensp;
            <asp:DropDownList ID="ddlDay" required="required" runat="server" Height="36px" Width="90px">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlMonth" required="required" runat="server" Height="36px" Width="90px" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged" AutoPostBack="true">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlYear" required="required" runat="server" Height="36px" Width="90px" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged" AutoPostBack="true">              
            </asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:Label ID="Label7" runat="server" Text="Notes"></asp:Label>
            &emsp;&emsp;&emsp;&emsp;&emsp;&ensp;
            <asp:TextBox ID="TextBox2" type="text" required="required" name="notes" runat="server" TextMode="MultiLine" Width="490px" Height="70px" ToolTip="Please Tell About Yourself"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" class="btn button" Text="Cancel" Width="120px" />
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;
            <asp:Button ID="Button2" runat="server" class="btn submit" Text="Submit" Width="120px" OnClick="Button2_Click" />
            &ensp;
            <asp:Button ID="Button3" runat="server" class="btn button" Text="Reset" Width="120px" />
        </div>
        <div>
            <asp:Label ID="Label8" runat="server"></asp:Label>
        </div>
    </form>
    </div>
</asp:Content>