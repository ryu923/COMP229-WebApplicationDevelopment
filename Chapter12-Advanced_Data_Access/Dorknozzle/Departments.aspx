<%@ Page Title="Dorknozzle Departments" Language="C#" MasterPageFile="~/Dorknozzle.Master" AutoEventWireup="true" CodeFile="Departments.aspx.cs" Inherits="Dorknozzle.Departments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Dorknozzle Departments</h1>
    <asp:GridView ID="departmentsGrid" 
                  runat="server" 
                  AllowPaging="True" 
                  PageSize="4" 
                  OnPageIndexChanging="departmentsGrid_PageIndexChanging">
    </asp:GridView>
</asp:Content>
