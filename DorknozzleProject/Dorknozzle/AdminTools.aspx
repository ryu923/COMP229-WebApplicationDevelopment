<%@ Page Title="" Language="C#" MasterPageFile="~/Dorknozzle.Master" AutoEventWireup="true" CodeFile="AdminTools.aspx.cs" Inherits="Dorknozzle.AdminTools" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Admin Tools</h1>

    <p>
        <asp:Label ID="dbErrorLabel" runat="server" ForeColor="Red" />
        Select an employee to update:<br />
        <asp:DropDownList ID="employeesList" runat="server" />
        <asp:Button ID="selectButton" runat="server" Text="Select" OnClick="selectButton_Click" />
    </p>

    <p>
        <span class="widelabel">Name:</span>
        <asp:TextBox ID="nameTextBox" runat="server" />
        <br />

        <span class="widelabel">User Name:</span>
        <asp:TextBox ID="userNameTextBox" runat="server" />
        <br />

        <span class="widelabel">Address:</span>
        <asp:TextBox ID="addressTextBox" runat="server" />
        <br />

        <span class="widelabel">City:</span>
        <asp:TextBox ID="cityTextBox" runat="server" />
        <br />

        <span class="widelabel">State:</span>
        <asp:TextBox ID="stateTextBox" runat="server" />
        <br />

        <span class="widelabel">Zip:</span>
        <asp:TextBox ID="zipTextBox" runat="server" />
        <br />

        <span class="widelabel">Home Phone:</span>
        <asp:TextBox ID="homePhoneTextBox" runat="server" />
        <br />

        <span class="widelabel">Extension:</span>
        <asp:TextBox ID="extensionTextBox" runat="server" />
        <br />

        <span class="widelabel">Mobile Phone:</span>
        <asp:TextBox ID="mobilePhoneTextBox" runat="server" />
        <br />
    </p>

    <p>
        <asp:Button ID="updateButton" 
                    runat="server" 
                    Text="Update Employee" 
                    OnClick="updateButton_Click" 
                    Width="200"
                    Enabled="False" />
        <asp:Button ID="deleteButton" 
                    runat="server" 
                    Text="Delete Employee" 
                    OnClick="deleteButton_Click" 
                    Width="200"
                    Enabled="False" />
    </p>
</asp:Content>
