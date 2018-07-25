<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_07.aspx.cs" Inherits="Chapter6.Login_07" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Login Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Username -->
            <p>
                Username:<br />
                <asp:TextBox ID="usernameTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="usernameReq" runat="server" ErrorMessage="Username is required!" ControlToValidate="usernameTextBox" SetFocusOnError="True" />
            </p>

            <!-- Password -->
            <p>
                Password:<br />
                <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="passwordReq" 
                                            runat="server" 
                                            ErrorMessage="Password is required!" 
                                            ControlToValidate="passwordTextBox" 
                                            SetFocusOnError="True" 
                                            Display="Dynamic" />

                <asp:TextBox ID="confirmPasswordTextBox" runat="server" TextMode="Password" />
                <asp:RequiredFieldValidator ID="confirmPasswordReq" 
                                            runat="server" 
                                            ErrorMessage="Password confirmation is required!" 
                                            ControlToValidate="confirmPasswordTextBox" 
                                            SetFocusOnError="True" 
                                            Display="Dynamic" />
                <!-- Add [CompareValidator] -->
                <asp:CompareValidator   ID="ComparePasswords" 
                                        runat="server" 
                                        ErrorMessage="Your passwords do not match up!"
                                        ControlToCompare="passwordTextBox" 
                                        ControlToValidate="confirmPasswordTextBox" 
                                        Display="Dynamic" />
            </p>

            <!-- Submit Button -->
            <p>
                <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
            </p>
        </div>
    </form>
</body>
</html>
