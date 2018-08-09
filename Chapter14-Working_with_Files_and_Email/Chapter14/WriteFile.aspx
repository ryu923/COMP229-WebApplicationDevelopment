<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WriteFile.aspx.cs" Inherits="Chapter14.WriteFile" %>

<%--Chapter14-01--%>
<%@ Import Namespace="System.IO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Writing to Text Files</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Write the following text within a text file:</p>
            <asp:TextBox ID="myText" runat="server" />
            <asp:Button ID="writeButton" runat="server" Text="Write" OnClick="WriteText" />
        </div>
    </form>
</body>
</html>
