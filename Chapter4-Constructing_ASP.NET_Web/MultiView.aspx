<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultiView.aspx.cs" Inherits="Chapter4_Practice.MultiView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MultiView Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <asp:Button ID="myButton" runat="server" Text="Switch Page" OnClick="SwitchPage" />
            </p>

            <asp:MultiView ID="myMultiView" runat="server" ActiveViewIndex="0">
                <asp:View ID="firstView" runat="server">
                    <p>... contents of the first view ...</p>
                </asp:View>
                <asp:View ID="secondView" runat="server">
                    <p>... contents of the second view ...</p>
                </asp:View>
                <asp:View ID="thirdView" runat="server">
                    <p>... contents of the third view ...</p>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
