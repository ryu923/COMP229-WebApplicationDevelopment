<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsingStyles.aspx.cs" Inherits="Chapter4_Practice.UsingStyles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Testing CSS</title>

    <link rel="stylesheet" type="text/css" href="Styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p class="title">
                Please, select a product
            </p>

            <p>
                <asp:DropDownList ID="productsList" runat="server" CssClass="dropdownmenu">
                    <asp:ListItem Text="Shirt" Selected="True" />
                    <asp:ListItem Text="Hat" />
                    <asp:ListItem Text="Pants" />
                    <asp:ListItem Text="Socks" />
                </asp:DropDownList>
            </p>

            <p>
                <asp:TextBox ID="quantityTextBox" runat="server" CssClass="textbox" />
            </p>

            <p>
                <asp:Button ID="addToCartButton" runat="server" Text="Add To Cart" CssClass="button" />
            </p>
        </div>
    </form>
</body>
</html>
