<%@ Page Title="" Language="C#" MasterPageFile="~/Dorknozzle.Master" AutoEventWireup="true" CodeFile="AdminNewsletter.aspx.cs" Inherits="Dorknozzle.AdminNewsletter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Create Newsletter</h1>

    <p>
        <asp:Label ID="resultLabel" runat="server" ForeColor="Red" />
    </p>

    <p>
        To:<br />
        <asp:TextBox ID="toTextBox" runat="server" />
    </p>

    <p>
        Subject:<br />
        <asp:TextBox ID="subjectTextBox" runat="server" />
    </p>

    <p>
        Introduction:<br />
        <asp:TextBox ID="introTextBox" 
                     runat="server" 
                     TextMode="MultiLine" 
                     Width="300" 
                     Height="100" />
    </p>

    <p>
        Employee Of The Month:<br />
        <asp:TextBox ID="employeeTextBox" runat="server" />
    </p>

    <p>
        Featured Event:<br />
        <asp:TextBox ID="eventTextBox" runat="server" />
    </p>

    <p>
        <asp:Button ID="sendNewsletterButton" runat="server" Text="Send Newsletter" OnClick="sendNewsletterButton_Click" />
    </p>
</asp:Content>
