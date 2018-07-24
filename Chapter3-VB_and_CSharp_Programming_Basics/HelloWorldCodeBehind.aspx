<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HelloWorldCodeBehind.aspx.cs" Inherits="Chapter3_Practice.HelloWorldCodeBehind" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hello World!</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="submitButton" runat="server" Text="Click Me" OnClick="Click" />
            <asp:Label ID="messageLabel" runat="server" />
        </div>
    </form>
</body>
</html>
