<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewState.aspx.cs" Inherits="P30.ViewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View State Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="nameTextBox" runat="server" />
            <asp:Button ID="submitButton" runat="server" Text="Click Me" OnClick="Click" />
            <asp:Label ID="messageLabel" runat="server" ViewStateMode="Disabled" />
        </div>
    </form>
</body>
</html>
