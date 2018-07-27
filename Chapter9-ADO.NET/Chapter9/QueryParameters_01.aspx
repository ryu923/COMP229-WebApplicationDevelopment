<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryParameters_01.aspx.cs" Inherits="Chapter9.QueryParameters_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Using Query Parameters</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            User ID:
            <asp:TextBox ID="idTextBox" runat="server" />
            <asp:Button ID="submitButton" runat="server" Text="Get Data" OnClick="submitButton_Click" />
            <asp:Label ID="userLabel" runat="server" />
        </div>
    </form>
</body>
</html>
