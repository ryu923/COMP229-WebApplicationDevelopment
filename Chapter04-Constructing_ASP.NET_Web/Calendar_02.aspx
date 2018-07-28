<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calendar_02.aspx.cs" Inherits="Chapter4_Practice.Calendar_02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calendar Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Pick your dates:</h1>
            <asp:Calendar   ID="myCalendar"
                            runat="server"
                            DayNameFormat="Short"
                            FirstDayOfWeek="Sunday"
                            NextPrevFormat="FullMonth" 
                            SelectionMode="DayWeekMonth"
                            SelectWeekText="Select Week"
                            SelectMonthText="Select Month" 
                            TitleFormat="Month"
                            OnSelectionChanged="SelectionChanged" />

            <h1>You selected these dates:</h1>
            <asp:Label ID="myLabel" runat="server" />
        </div>
    </form>
</body>
</html>
