<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReadFile.aspx.cs" Inherits="Chapter14.ReadFile" %>

<%-- Chapter14-04 --%>
<%@ Import Namespace="System.IO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reading from Text Files</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="readButton" runat="server" Text="Read" OnClick="ReadText" />
            <br />
            <asp:Label ID="resultLabel" runat="server" />
        </div>
    </form>
</body>
</html>
