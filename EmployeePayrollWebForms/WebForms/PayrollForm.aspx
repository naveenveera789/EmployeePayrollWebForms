<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="PayrollForm.aspx.cs" Inherits="EmployeePayrollWebForms.WebForms.PayrollForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/PayrollForm.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sec2">
        <form method="post">
        <div class="sec1">
            <h3>&nbsp;Employee Payroll Form</h3>
        </div>
        <br />
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required" ControlToValidate="TextBox1" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            &emsp;&emsp;&emsp;&emsp;&emsp;&ensp;
            <asp:TextBox ID="TextBox1" type="text" name="Name" runat="server" Width="490px"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Profile image Required" ControlToValidate="RadioButtonList1" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:Label ID="Label2" runat="server" Text="Profile image"></asp:Label>
            &ensp;
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
                <asp:ListItem> <img src="../Assets/profile-images/Female (1).png" alt="img1"/> </asp:ListItem>
                <asp:ListItem> <img src="../Assets/profile-images/Male (4).png" alt="img2"/></asp:ListItem>
                <asp:ListItem> <img src="../Assets/profile-images/Female (4).png" alt="img3"/></asp:ListItem>
                <asp:ListItem> <img src="../Assets/profile-images/Male (5).png" alt="img4"/></asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <br />
        <br />
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Gender Required" ControlToValidate="RadioButtonList2" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            &emsp;&emsp;&nbsp;
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" CellPadding="1" CellSpacing="1" RepeatLayout="Flow" CssClass="rbm">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <br />
        <div>
            &nbsp;
            <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>
            &ensp;&ensp;
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbn">
                <asp:ListItem>HR</asp:ListItem>
                <asp:ListItem>Sales</asp:ListItem>
                <asp:ListItem>Finance</asp:ListItem>
                <asp:ListItem>Engineer</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <br />
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Salary Required" ControlToValidate="DropDownList1" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:Label ID="Label5" runat="server" Text="Salary"></asp:Label>
            &emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Width="250px" Height="36px">
                <asp:ListItem>Select Salary</asp:ListItem>
                <asp:ListItem Value="₹ 10,000">₹ 10,000</asp:ListItem>
                <asp:ListItem Value="₹ 12,000">₹ 12,000</asp:ListItem>
                <asp:ListItem Value="₹ 15,000">₹ 15,000</asp:ListItem>
                <asp:ListItem Value="₹ 18,000">₹ 18,000</asp:ListItem>
                <asp:ListItem Value="₹ 20,000">₹ 20,000</asp:ListItem>
                <asp:ListItem Value="₹ 22,000">₹ 22,000</asp:ListItem>
                <asp:ListItem Value="₹ 25,000">₹ 25,000</asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Start Date Required" ControlToValidate="ddlDay" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:Label ID="Label6" runat="server" Text="Start Date"></asp:Label>
            &emsp;&emsp;&emsp;&ensp;
            <asp:DropDownList ID="ddlDay" runat="server" Height="36px" Width="90px">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlMonth" runat="server" Height="36px" Width="90px" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Value="MONTH"></asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlYear" runat="server" Height="36px" Width="90px" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged" AutoPostBack="true">              
            </asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Notes Required" ControlToValidate="TextBox2" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:Label ID="Label7" runat="server" Text="Notes"></asp:Label>
            &emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
            <asp:TextBox ID="TextBox2" type="text" name="notes" runat="server" TextMode="MultiLine" Width="490px" Height="70px"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" class="btn btn-secondary" Text="Cancel" Width="120px" />
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;
            <asp:Button ID="Button2" runat="server" class="btn btn-secondary" Text="Submit" Width="120px" />
            &ensp;
            <asp:Button ID="Button3" runat="server" class="btn btn-secondary" Text="Reset" Width="120px" />
        </div>
    </form>
    </div>
</asp:Content>