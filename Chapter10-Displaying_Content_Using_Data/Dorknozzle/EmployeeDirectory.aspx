<%@ Page Title="" Language="C#" MasterPageFile="~/Dorknozzle.Master" AutoEventWireup="true" CodeBehind="EmployeeDirectory.aspx.cs" Inherits="Dorknozzle.EmployeeDirectory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Employee Directory</h1>

    <%--<asp:Repeater ID="employeesRepeater" runat="server">--%>
    <asp:DataList ID="employeesList" runat="server" OnItemCommand="employeesList_ItemCommand" CellPadding="4" ForeColor="#333333">
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <ItemTemplate>
            <%--Employee ID:
            <strong><%#Eval("EmployeeID") %></strong><br />--%>
            <asp:Literal ID="extraDetailsLiteral" runat="server" EnableViewState="False" />

            Name:
            <strong><%#Eval("Name") %></strong><br />

            Username:
            <strong><%#Eval("Username") %></strong><br />

            <asp:LinkButton ID="detailsButton"
                runat="server"
                Text='<%#"View more details about " + Eval("Name") %>'
                CommandName="MoreDetailsPlease"
                CommandArgument='<%#Eval("EmployeeID")%>' />
            <br />
            <asp:LinkButton ID="editButton" 
                runat="server" 
                Text=<%#"Edit employee " + Eval("Name")%> 
                CommandName="EditItem"
                CommandArgument=<%#Eval("EmployeeID")%> />
        </ItemTemplate>

        <AlternatingItemStyle BackColor="White" />

        <EditItemTemplate>
            Name:
            <asp:TextBox ID="nameTextBox" runat="server" Text=<%#Eval("Name") %> /><br />

            Username:
            <asp:TextBox ID="usernameTextBox" runat="server" Text=<%#Eval("Username") %> /><br />
            
            <asp:LinkButton ID="updateButton" 
                            runat="server" 
                            Text="Update Item" 
                            CommandName="UpdateItem" 
                            CommandArgument=<%#Eval("EmployeeID") %> />

            or
            <asp:LinkButton ID="cancelButton" 
                            runat="server" 
                            Text="Cancel Editing" 
                            CommandName="CancelEditing" 
                            CommandArgument=<%#Eval("EmployeeID") %> />
        </EditItemTemplate>

        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />

        <SeparatorTemplate>
            <hr />
        </SeparatorTemplate>
    </asp:DataList>
    <%--</asp:Repeater>--%>
</asp:Content>
