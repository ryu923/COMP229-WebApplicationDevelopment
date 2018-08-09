<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="Chapter14.FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Upload</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="fileUpload" runat="server" />
            <asp:Button ID="uploadButton" runat="server" Text="Upload!" OnClick="UploadFile" />
            <br />
            <asp:Label ID="label" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
