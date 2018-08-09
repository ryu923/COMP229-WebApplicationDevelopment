<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendEmail.aspx.cs" Inherits="Chapter14.SendEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sending Emails with ASP.NET</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="sendEmailButton" runat="server" Text="Send Email!" OnClick="SendingEmail" />
            <br />
            <asp:Label ID="statusLabel" runat="server" />
        </div>
    </form>
</body>
</html>
