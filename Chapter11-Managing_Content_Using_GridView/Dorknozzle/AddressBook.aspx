<%@ Page Title="Dorknozzle Address Book" 
         Language="C#" 
         MasterPageFile="~/Dorknozzle.Master" 
         AutoEventWireup="true" 
         Inherits="Dorknozzle.AddressBook" 
         CodeFile="AddressBook.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Address Book</h1>
    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="grid_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="City" HeaderText="City" />
            <asp:BoundField DataField="MobilePhone" HeaderText="Mobile Phone" />
            <asp:ButtonField CommandName="Select" Text="Select" />
        </Columns>
    </asp:GridView>
    
    <br />

    <%--<asp:Label ID="detailsLabel" runat="server" />--%>
    <asp:DetailsView ID="employeeDetails" runat="server" AutoGenerateRows="False" OnModeChanging="employeeDetails_ModeChanging" OnItemUpdating="employeeDetails_ItemUpdating">
        <Fields>
            <%--<asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />--%>

            <asp:TemplateField HeaderText="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="editAddressTextBox" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="insertAddressTextBox" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <%--<asp:BoundField DataField="City" HeaderText="City" />--%>
            <asp:TemplateField HeaderText="City">
                <EditItemTemplate>
                    <asp:TextBox ID="editCityTextBox" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="insertCityTextBox" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>


            <%--<asp:BoundField DataField="State" HeaderText="State" />--%>
            <asp:TemplateField HeaderText="State">
                <EditItemTemplate>
                    <asp:TextBox ID="editStateTextBox" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="insertStateTextBox" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <%--<asp:BoundField DataField="Zip" HeaderText="Zip" />--%>
            <asp:TemplateField HeaderText="Zip">
                <EditItemTemplate>
                    <asp:TextBox ID="editZipTextBox" runat="server" Text='<%# Bind("Zip") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="insertZipTextBox" runat="server" Text='<%# Bind("Zip") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="zipLabel" runat="server" Text='<%# Bind("Zip") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <%--<asp:BoundField DataField="HomePhone" HeaderText="Home Phone" />--%>
            <asp:TemplateField HeaderText="Home Phone">
                <EditItemTemplate>
                    <asp:TextBox ID="editHomePhoneTextBox" runat="server" Text='<%# Bind("HomePhone") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="insertHomePhoneTextBox" runat="server" Text='<%# Bind("HomePhone") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="homePhoneLabel" runat="server" Text='<%# Bind("HomePhone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <%--<asp:BoundField DataField="Extension" HeaderText="Extension" />--%>
            <asp:TemplateField HeaderText="Extension">
                <EditItemTemplate>
                    <asp:TextBox ID="editExtensionTextBox" runat="server" Text='<%# Bind("Extension") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="insertExtensionTextBox" runat="server" Text='<%# Bind("Extension") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="extensionLabel" runat="server" Text='<%# Bind("Extension") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:CommandField ShowEditButton="True" />
        </Fields>

        <HeaderTemplate>
            <%#Eval("Name") %>
        </HeaderTemplate>
    </asp:DetailsView>
</asp:Content>
