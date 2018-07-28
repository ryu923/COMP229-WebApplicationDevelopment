<%@ Page Title="" Language="C#" MasterPageFile="~/Dorknozzle.Master" AutoEventWireup="true" CodeBehind="HelpDesk.aspx.cs" Inherits="Dorknozzle.HelpDesk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Employee Help Desk Request</h1>

    <p>
        Station Number: <br />
        <asp:TextBox ID="stationTextBox" runat="server" CssClass="textbox" />
    </p>

    <p>
        Problem Category: <br />
        <asp:DropDownList ID="categoryList" runat="server" CssClass="dropdownmenu" />
    </p>

    <p>
        Problem Subject: <br />
        <asp:DropDownList ID="subjectList" runat="server" CssClass="dropdownmenu" />
    </p>

    <p>
        Problem Description: <br />
        <asp:TextBox ID="descriptionTextBox" runat="server" CssClass="textbox" Columns="40" Rows="4" TextMode="MultiLine" />
    </p>

    <p>
        <asp:Button ID="submitButton" runat="server" Text="Submit Request" CssClass="button" />
    </p>
</asp:Content>
