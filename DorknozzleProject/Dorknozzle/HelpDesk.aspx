<%@ Page Title="" Language="C#" MasterPageFile="~/Dorknozzle.Master" AutoEventWireup="true" CodeFile="HelpDesk.aspx.cs" Inherits="Dorknozzle.HelpDesk" %>

<%--Final Addtion Start--%>
<%--<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>--%>
<%--Final Addtion End--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Employee Help Desk Request</h1>

    <asp:Label ID="dbErrorMessage" runat="server" ForeColor="Red" />

    <p>
        Station Number: <br />
        <asp:TextBox ID="stationTextBox" runat="server" CssClass="textbox" />
        <asp:RequiredFieldValidator ID="stationReq" 
                                    runat="server" 
                                    ErrorMessage="<br />You must enter a station number!" 
                                    Display="Dynamic" 
                                    ControlToValidate="stationTextBox" />
        <%--Final Addtion Start--%>
        <%--<cc1:ValidatorCalloutExtender ID="stationNumReq_ValidatorCalloutExtender" 
                                      runat="server" 
                                      Enabled="True" 
                                      TargetControlID="stationReq" 
                                      HighlightCssClass="fieldError">
        </cc1:ValidatorCalloutExtender>--%>
        <%--Final Addtion End--%>
        <asp:CompareValidator   ID="stationNumCheck" 
                                runat="server" 
                                ErrorMessage="<br />The value must be a number!" 
                                ControlToValidate="stationTextBox" 
                                Operator="DataTypeCheck" 
                                Type="Integer" 
                                Display="Dynamic" />
        <%--Final Addtion Start--%>
        <%--<cc1:ValidatorCalloutExtender ID="stationNumCheck_ValidatorCalloutExtender" 
                                      runat="server" 
                                      Enabled="True" 
                                      TargetControlID="stationNumCheck" 
                                      HighlightCssClass="fieldError">
        </cc1:ValidatorCalloutExtender>--%>
        <%--Final Addtion End--%>
        <asp:RangeValidator ID="stationNumRangeCheck" 
                            runat="server" 
                            ErrorMessage="<br />Number must be between 1 and 50." 
                            ControlToValidate="stationTextBox" 
                            MinimumValue="1" 
                            MaximumValue="50" 
                            Type="Integer" 
                            Display="Dynamic" />
        <%--Final Addtion Start--%>
        <%--<cc1:ValidatorCalloutExtender ID="stationNumRangeCheck_ValidatorCalloutExtender" 
                                      runat="server" 
                                      Enabled="True" 
                                      TargetControlID="stationNumRangeCheck" 
                                      HighlightCssClass="fieldError">
        </cc1:ValidatorCalloutExtender>--%>
        <%--Final Addtion End--%>
    </p>

    <p>
        Problem Category: <br />
        <asp:DropDownList ID="categoryList" runat="server" CssClass="dropdownmenu" />
    </p>

    <p>
        Problem Subject: <br />
        <asp:DropDownList ID="subjectList" runat="server" CssClass="dropdownmenu" />
    </p>

    <p>
        Problem Description: <br />
        <asp:TextBox ID="descriptionTextBox" runat="server" CssClass="textbox" Columns="40" Rows="4" TextMode="MultiLine" />
        <asp:RequiredFieldValidator ID="descriptionReq" 
                                    runat="server" 
                                    ErrorMessage="<br />You must enter a description!" 
                                    ControlToValidate="descriptionTextBox" 
                                    Display="Dynamic" />
        <%--Final Addtion Start--%>
        <%--<cc1:ValidatorCalloutExtender ID="descriptionReq_ValidatorCalloutExtender" 
                                      runat="server" 
                                      Enabled="True" 
                                      TargetControlID="descriptionReq" 
                                      HighlightCssClass="fieldError">
        </cc1:ValidatorCalloutExtender>--%>
        <%--Final Addtion End--%>
    </p>

    <p>
        <asp:Button ID="submitButton" 
                    runat="server" 
                    Text="Submit Request" 
                    CssClass="button" 
                    OnClick="submitButton_Click" />
    </p>
</asp:Content>
