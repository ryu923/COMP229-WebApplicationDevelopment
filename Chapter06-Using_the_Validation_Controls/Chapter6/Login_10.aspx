<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_10.aspx.cs" Inherits="Chapter6.Login_10" %>

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
                <asp:CompareValidator   ID="ComparePasswords" 
                                        runat="server" 
                                        ErrorMessage="Your passwords do not match up!"
                                        ControlToCompare="passwordTextBox" 
                                        ControlToValidate="confirmPasswordTextBox" 
                                        Display="Dynamic" />
            </p>

            <!-- Age -->
            <p>
                Age:<br />
                <asp:TextBox ID="ageTextBox" runat="server" />
                <asp:RequiredFieldValidator ID="ageReq" 
                                            runat="server"
                                            ErrorMessage="Age is required!" 
                                            ControlToValidate="ageTextBox" 
                                            SetFocusOnError="True" 
                                            Display="Dynamic" />
                <asp:CompareValidator   ID="ageCheck" 
                                        runat="server" 
                                        ErrorMessage="You must be 16 years or older to log in" 
                                        Operator="GreaterThan" 
                                        Type="Integer"
                                        ValueToCompare="15" 
                                        ControlToValidate="ageTextBox" />
            </p>

            <!-- Birthday -->
            <p>
                Birth Date:<br />
                <asp:TextBox ID="birthDateTextBox" runat="server" />
                <asp:CompareValidator   ID="birthDateCheck" 
                                        runat="server" 
                                        ErrorMessage="You must enter the date in a valid format!" 
                                        ControlToValidate="birthDateTextBox" 
                                        Operator="DataTypeCheck" 
                                        Type="Date" 
                                        Display="Dynamic" 
                                        SetFocusOnError="True" />
                <!-- Add [RangeValidator] -->
                <asp:RangeValidator ID="birthDateRangeTest" 
                                    runat="server" 
                                    ErrorMessage="You must've been born in the 1970s to use this web site!" 
                                    ControlToValidate="birthDateTextBox" 
                                    Type="Date" 
                                    MaximumValue="1979-12-31" 
                                    MinimumValue="1970-01-01" />
            </p>

            <!-- Submit Button -->
            <p>
                <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
            </p>
        </div>
    </form>
</body>
</html>
