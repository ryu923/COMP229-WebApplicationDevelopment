<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Directories.aspx.cs" Inherits="Chapter14.Directories" %>

<%--Chapter14-07--%>
<%@ Import Namespace="System.IO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Directory Info</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>What do you want to view:</p>

            <asp:DropDownList ID="dirDropDown" runat="server" OnSelectedIndexChanged="ViewDriveInfo" AutoPostBack="True">
                <asp:ListItem Text="Select..." />
                <asp:ListItem Text="Directories" />
                <asp:ListItem Text="Files" />
                <asp:ListItem Text="Directories/Files" />
            </asp:DropDownList>

            <asp:GridView ID="grid" runat="server" />
        </div>
    </form>
</body>
</html>
