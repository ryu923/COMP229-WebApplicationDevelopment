<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomValidator.aspx.cs" Inherits="Chapter6.CustomValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                New Username:<br />
                <asp:TextBox ID="usernameTextBox" runat="server" />
                <asp:CustomValidator    ID="usernameUnique" 
                                        runat="server" 
                                        ErrorMessage="This username already taken!" 
                                        ControlToValidate="usernameTextBox"
                                        OnServerValidate="CheckUniqueUserName" />
            </p>

            <p>
                <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
            </p>
        </div>
    </form>
</body>
</html>
