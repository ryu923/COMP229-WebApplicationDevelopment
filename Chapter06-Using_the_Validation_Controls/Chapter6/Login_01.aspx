﻿<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head id="Head1" runat="server">
    <title>Simple Login Page</title>
  </head>
  <body>
      <form id="form1" runat="server">
        <div>
            <!-- Username -->
            <p>
                Username: <br />
                <asp:TextBox ID="usernameTextBox" runat="server" />
                <asp:RequiredFieldValidator ID="usernameReq" runat="server" ErrorMessage="Username is required" ControlToValidate="usernameTextBox" SetFocusOnError="True" />
            </p>

            <!-- Password -->
            <p>
                Password: <br />
                <asp:TextBox ID="passwordTextBox" runat="server"  TextMode="Password" />
                <asp:RequiredFieldValidator ID="passwordReq" runat="server" ErrorMessage="Password is required!"  ControlToValidate="passwordTextBox" SetFocusOnError="True" />
            </p>

            <!-- Submit Button -->
            <p>
                <asp:Button ID="submitButton" runat="server" Text="Submit" />
            </p>
        </div>
      </form>
  </body>
</html>
