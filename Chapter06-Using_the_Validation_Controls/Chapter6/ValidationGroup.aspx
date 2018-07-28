<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationGroup.aspx.cs" Inherits="Chapter6.ValidationGroup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validation Groups</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Login Controls -->
            <h1>Login</h1>

            <!-- Username -->
            <p>
                Username:<br />
                <asp:TextBox ID="usernameTextBox" runat="server" />
                <asp:RequiredFieldValidator ID="usernameReq" 
                                            runat="server" 
                                            ErrorMessage="Username is required!" 
                                            SetFocusOnError="True" 
                                            ValidationGroup="Login" ControlToValidate="usernameTextBox" />
            </p>

            <!-- Password -->
            <p>
                Password:<br />
                <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password" />
                <asp:RequiredFieldValidator ID="passwordReq" 
                                            runat="server" 
                                            ErrorMessage="Password is required!" 
                                            ControlToValidate="passwordTextBox" 
                                            SetFocusOnError="True" 
                                            ValidationGroup="Login" />
            </p>

            <p>
                <asp:Button ID="loginButton" runat="server" Text="Log In" ValidationGroup="Login" />
            </p>

            <!-- Login Controls -->
            <h1>Register</h1>

            <!-- Username -->
            <p>
                Username:<br />
                <asp:TextBox ID="newUserNameTextBox" runat="server" />
                <asp:RequiredFieldValidator ID="newUserNameReq" 
                                            runat="server" 
                                            ErrorMessage="Username is required!" 
                                            SetFocusOnError="True" 
                                            ValidationGroup="Register" 
                                            ControlToValidate="newUserNameTextBox" />
            </p>

            <!-- Password -->
            <p>
                Password:<br />
                <asp:TextBox ID="newPasswordTextBox" runat="server" TextMode="Password" />
                <asp:RequiredFieldValidator ID="newPasswordReq" 
                                            runat="server" 
                                            ErrorMessage="Password is required!" 
                                            ControlToValidate="passwordTextBox" 
                                            SetFocusOnError="True" 
                                            ValidationGroup="Register" />
            </p>

            <p>
                <asp:Button ID="registerButton" runat="server" Text="Register" ValidationGroup="Register" />
            </p>
        </div>
    </form>
</body>
</html>
