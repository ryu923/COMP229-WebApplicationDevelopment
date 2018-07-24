<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SiteMapPath.aspx.cs" Inherits="Chapter4_Practice.SiteMapPath" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SiteMapPath Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SiteMapDataSource ID="mySiteMapDataSource" runat="server" />
            <asp:SiteMapPath ID="mySiteMapPath" runat="server"  PathSeparator=" > " DataSourceID="mySiteMapDataSource" /> 
        </div>
    </form>
</body>
</html>
