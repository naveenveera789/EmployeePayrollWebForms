<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="EmployeePayrollWebForms.WebForms.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/HomePage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sec1">
        <h3>Employee Details</h3>
    </div>
    <br />
    <asp:Table ID="Table1" runat="server">
        <asp:TableRow runat="server" HorizontalAlign="Left" TableSection="TableHeader">
            <asp:TableCell runat="server">NAME</asp:TableCell>
            <asp:TableCell runat="server">GENDER</asp:TableCell>
            <asp:TableCell runat="server">DEPARTMENT</asp:TableCell>
            <asp:TableCell runat="server">SALARY</asp:TableCell>
            <asp:TableCell runat="server">START DATE</asp:TableCell>
            <asp:TableCell runat="server">ACTIONS</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
        </asp:TableRow>
        <asp:TableRow runat="server">
        </asp:TableRow>
        <asp:TableRow runat="server">
        </asp:TableRow>
        <asp:TableRow runat="server">
        </asp:TableRow>
        <asp:TableRow runat="server">
        </asp:TableRow>
        <asp:TableRow runat="server">
        </asp:TableRow>
        <asp:TableRow runat="server">
        </asp:TableRow>
        <asp:TableRow runat="server">
        </asp:TableRow>
        <asp:TableRow runat="server">
        </asp:TableRow>
        <asp:TableRow runat="server">
        </asp:TableRow>
    </asp:Table>
</asp:Content>
