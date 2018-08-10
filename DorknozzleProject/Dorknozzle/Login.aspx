<%@ Page Title="" Language="C#" MasterPageFile="~/Dorknozzle.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Dorknozzle.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Login</h1>

<%--    <p>
        Username:<br />
        <asp:TextBox ID="username" runat="server" />
    </p>

    <p>
        Password:<br />
        <asp:TextBox ID="password" runat="server" />
    </p>

    <p>
        <asp:Button ID="submitButton" runat="server" Text="Login" OnClick="LoginUser" />
    </p>--%>

    <asp:Login ID="Login1" runat="server" BorderStyle="Solid" BorderWidth="1">

    </asp:Login>
</asp:Content>
