<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClickEvent.aspx.cs" Inherits="Chapter3_Practice.ClickEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Click the Button</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="button" runat="server" Text="Click Me" OnClick="button_Click" />
            <asp:Label ID="messageLabel" runat="server" />
        </div>
    </form>
</body>
</html>
