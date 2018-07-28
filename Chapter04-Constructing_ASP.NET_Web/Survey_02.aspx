<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Survey_02.aspx.cs" Inherits="Chapter4_Practice.Survey_02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Take the Survey!</h1>

            <p>
                Name: <br />
                <input type="text" id="name" runat="server" />
            </p>
            
            <p>
                Email: <br />
                <input type="text" id="email" runat="server" />
            </p>

            <p>
                Which server technologies do ou use? <br />
                <select id="servermodel" runat="server" multiple="true">
                    <option>ASP.NET</option>
                    <option>PHP</option>
                    <option>JSP</option>
                    <option>CGI</option>
                    <option>ColdFusion</option>
                </select>
            </p>

            <p>
                Do you like .NET so far? <br />

                <select id="likeDotNet" runat="server">
                    <option>Yes</option>
                    <option>No</option>
                </select>
            </p>

            <p>
                <%--<button id="confirmButton" runat="server" onserverclick="Click">Confirm</button>--%>
                <asp:Button ID="confirmButton" runat="server" Text="Confirm" OnClick="confirmButton_Click" />
            </p>

            <p>
                <asp:Label ID="feedbackLabel" runat="server" />
            </p>
        </div>
    </form>
</body>
</html>
