<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Call Book Printer</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td colspan="4" rowspan="3" style="text-align: center">
                    <asp:Label ID="LabelMessage" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td colspan="4">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <strong><span style="font-size: 12pt"> FROM</span></strong></td>
                <td>
                    <strong><span style="font-size: 12pt"> TO</span></strong></td>
                <td>
                    <asp:Button ID="ButtonPrinted" runat="server" OnClick="ButtonPrinted_Click" Text="Mark Printed" />
                    <asp:TextBox ID="TextBoxSelectedDate" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="TextBoxSelectedDay" runat="server" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="TextBoxSelectedHour" runat="server" Visible="False"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" rowspan="2" valign="top">
                    <asp:Calendar ID="CalendarFrom" runat="server" Caption="DATE FROM"></asp:Calendar>
                    <asp:DropDownList ID="DropDownListHourFrom" runat="server">
                        <asp:ListItem Value="0">12</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                        <asp:ListItem Value="6">6</asp:ListItem>
                        <asp:ListItem Value="7">7</asp:ListItem>
                        <asp:ListItem Value="8">8</asp:ListItem>
                        <asp:ListItem Value="9">9</asp:ListItem>
                        <asp:ListItem Value="10">10</asp:ListItem>
                        <asp:ListItem Value="11">11</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownListMinuteFrom" runat="server">
                        <asp:ListItem Selected="True">00</asp:ListItem>
                        <asp:ListItem Value="1">01</asp:ListItem>
                        <asp:ListItem Value="2">02</asp:ListItem>
                        <asp:ListItem Value="3">03</asp:ListItem>
                        <asp:ListItem Value="4">04</asp:ListItem>
                        <asp:ListItem Value="5">05</asp:ListItem>
                        <asp:ListItem Value="6">06</asp:ListItem>
                        <asp:ListItem Value="7">07</asp:ListItem>
                        <asp:ListItem Value="8">08</asp:ListItem>
                        <asp:ListItem Value="9">09</asp:ListItem>
                        <asp:ListItem Value="10"></asp:ListItem>
                        <asp:ListItem Value="11"></asp:ListItem>
                        <asp:ListItem Value="12"></asp:ListItem>
                        <asp:ListItem Value="13"></asp:ListItem>
                        <asp:ListItem Value="14"></asp:ListItem>
                        <asp:ListItem Value="15"></asp:ListItem>
                        <asp:ListItem Value="16"></asp:ListItem>
                        <asp:ListItem Value="17"></asp:ListItem>
                        <asp:ListItem Value="18"></asp:ListItem>
                        <asp:ListItem Value="19"></asp:ListItem>
                        <asp:ListItem Value="20"></asp:ListItem>
                        <asp:ListItem Value="21"></asp:ListItem>
                        <asp:ListItem Value="22"></asp:ListItem>
                        <asp:ListItem Value="23"></asp:ListItem>
                        <asp:ListItem Value="24"></asp:ListItem>
                        <asp:ListItem Value="25"></asp:ListItem>
                        <asp:ListItem Value="26"></asp:ListItem>
                        <asp:ListItem Value="27"></asp:ListItem>
                        <asp:ListItem Value="28"></asp:ListItem>
                        <asp:ListItem Value="29"></asp:ListItem>
                        <asp:ListItem Value="30"></asp:ListItem>
                        <asp:ListItem Value="31"></asp:ListItem>
                        <asp:ListItem Value="32"></asp:ListItem>
                        <asp:ListItem Value="33"></asp:ListItem>
                        <asp:ListItem Value="34"></asp:ListItem>
                        <asp:ListItem Value="35"></asp:ListItem>
                        <asp:ListItem Value="36"></asp:ListItem>
                        <asp:ListItem Value="37"></asp:ListItem>
                        <asp:ListItem Value="38"></asp:ListItem>
                        <asp:ListItem Value="39"></asp:ListItem>
                        <asp:ListItem Value="40"></asp:ListItem>
                        <asp:ListItem Value="41"></asp:ListItem>
                        <asp:ListItem Value="42"></asp:ListItem>
                        <asp:ListItem Value="43"></asp:ListItem>
                        <asp:ListItem Value="44"></asp:ListItem>
                        <asp:ListItem Value="45"></asp:ListItem>
                        <asp:ListItem Value="46"></asp:ListItem>
                        <asp:ListItem Value="47"></asp:ListItem>
                        <asp:ListItem Value="48"></asp:ListItem>
                        <asp:ListItem Value="49"></asp:ListItem>
                        <asp:ListItem Value="50"></asp:ListItem>
                        <asp:ListItem Value="51"></asp:ListItem>
                        <asp:ListItem Value="52"></asp:ListItem>
                        <asp:ListItem Value="53"></asp:ListItem>
                        <asp:ListItem Value="54"></asp:ListItem>
                        <asp:ListItem Value="55"></asp:ListItem>
                        <asp:ListItem Value="56"></asp:ListItem>
                        <asp:ListItem Value="57"></asp:ListItem>
                        <asp:ListItem Value="58"></asp:ListItem>
                        <asp:ListItem Value="59"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownListAmPmFrom" runat="server">
                        <asp:ListItem Selected="True" Value="0">AM</asp:ListItem>
                        <asp:ListItem Value="12">PM</asp:ListItem>
                    </asp:DropDownList><br />
        <asp:Button ID="ButtonShow" runat="server" OnClick="ButtonShow_Click" Text="Preview Callbook" /><br />
                    &nbsp;<br />
                    </td>
                <td rowspan="2" valign="top">
                    <asp:Calendar ID="CalendarTo" runat="server" Caption="DATE TO"></asp:Calendar>
                    <asp:DropDownList ID="DropDownListHourTo" runat="server">
                        <asp:ListItem Value="0">12</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                        <asp:ListItem Value="6">6</asp:ListItem>
                        <asp:ListItem Value="7">7</asp:ListItem>
                        <asp:ListItem Value="8">8</asp:ListItem>
                        <asp:ListItem Value="9">9</asp:ListItem>
                        <asp:ListItem Value="10">10</asp:ListItem>
                        <asp:ListItem Value="11">11</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownListMinuteTo" runat="server">
                        <asp:ListItem Selected="True">00</asp:ListItem>
                        <asp:ListItem Value="1">01</asp:ListItem>
                        <asp:ListItem Value="2">02</asp:ListItem>
                        <asp:ListItem Value="3">03</asp:ListItem>
                        <asp:ListItem Value="4">04</asp:ListItem>
                        <asp:ListItem Value="5">05</asp:ListItem>
                        <asp:ListItem Value="6">06</asp:ListItem>
                        <asp:ListItem Value="7">07</asp:ListItem>
                        <asp:ListItem Value="8">08</asp:ListItem>
                        <asp:ListItem Value="9">09</asp:ListItem>
                        <asp:ListItem Value="10"></asp:ListItem>
                        <asp:ListItem Value="11"></asp:ListItem>
                        <asp:ListItem Value="12"></asp:ListItem>
                        <asp:ListItem Value="13"></asp:ListItem>
                        <asp:ListItem Value="14"></asp:ListItem>
                        <asp:ListItem Value="15"></asp:ListItem>
                        <asp:ListItem Value="16"></asp:ListItem>
                        <asp:ListItem Value="17"></asp:ListItem>
                        <asp:ListItem Value="18"></asp:ListItem>
                        <asp:ListItem Value="19"></asp:ListItem>
                        <asp:ListItem Value="20"></asp:ListItem>
                        <asp:ListItem Value="21"></asp:ListItem>
                        <asp:ListItem Value="22"></asp:ListItem>
                        <asp:ListItem Value="23"></asp:ListItem>
                        <asp:ListItem Value="24"></asp:ListItem>
                        <asp:ListItem Value="25"></asp:ListItem>
                        <asp:ListItem Value="26"></asp:ListItem>
                        <asp:ListItem Value="27"></asp:ListItem>
                        <asp:ListItem Value="28"></asp:ListItem>
                        <asp:ListItem Value="29"></asp:ListItem>
                        <asp:ListItem Value="30"></asp:ListItem>
                        <asp:ListItem Value="31"></asp:ListItem>
                        <asp:ListItem Value="32"></asp:ListItem>
                        <asp:ListItem Value="33"></asp:ListItem>
                        <asp:ListItem Value="34"></asp:ListItem>
                        <asp:ListItem Value="35"></asp:ListItem>
                        <asp:ListItem Value="36"></asp:ListItem>
                        <asp:ListItem Value="37"></asp:ListItem>
                        <asp:ListItem Value="38"></asp:ListItem>
                        <asp:ListItem Value="39"></asp:ListItem>
                        <asp:ListItem Value="40"></asp:ListItem>
                        <asp:ListItem Value="41"></asp:ListItem>
                        <asp:ListItem Value="42"></asp:ListItem>
                        <asp:ListItem Value="43"></asp:ListItem>
                        <asp:ListItem Value="44"></asp:ListItem>
                        <asp:ListItem Value="45"></asp:ListItem>
                        <asp:ListItem Value="46"></asp:ListItem>
                        <asp:ListItem Value="47"></asp:ListItem>
                        <asp:ListItem Value="48"></asp:ListItem>
                        <asp:ListItem Value="49"></asp:ListItem>
                        <asp:ListItem Value="50"></asp:ListItem>
                        <asp:ListItem Value="51"></asp:ListItem>
                        <asp:ListItem Value="52"></asp:ListItem>
                        <asp:ListItem Value="53"></asp:ListItem>
                        <asp:ListItem Value="54"></asp:ListItem>
                        <asp:ListItem Value="55"></asp:ListItem>
                        <asp:ListItem Value="56"></asp:ListItem>
                        <asp:ListItem Value="57"></asp:ListItem>
                        <asp:ListItem Value="58"></asp:ListItem>
                        <asp:ListItem Value="59"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownListAmPmTo" runat="server">
                        <asp:ListItem Selected="True" Value="0">AM</asp:ListItem>
                        <asp:ListItem Value="12">PM</asp:ListItem>
                    </asp:DropDownList></td>
                <td rowspan="2" valign="top">
                    <asp:GridView ID="GridViewImported" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        AutoGenerateSelectButton="True" CellPadding="4" DataKeyNames="sessKey,ImportDate" DataSourceID="SqlDataSourceNewLeads"
                        ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridViewImported_SelectedIndexChanged">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <Columns>
                            <asp:BoundField DataField="CountOfLeadID" HeaderText="CountOfLeadID" SortExpression="CountOfLeadID" />
                            <asp:BoundField DataField="telemarketImportResult" HeaderText="telemarketImportResult"
                                SortExpression="telemarketImportResult" />
                            <asp:BoundField DataField="ImportDate" HeaderText="ImportDate" SortExpression="ImportDate" />
                            <asp:BoundField DataField="sessKey" HeaderText="sessKey" SortExpression="sessKey" />
                            <asp:BoundField DataField="printed" HeaderText="printed" SortExpression="printed" />
                        </Columns>
                        <RowStyle BackColor="#EFF3FB" />
                        <EditRowStyle BackColor="#2461BF" />
                        <SelectedRowStyle BackColor="Yellow" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
            </tr>
        </table>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:callbookConnectionString1 %>"
            ProviderName="<%$ ConnectionStrings:callbookConnectionString1.ProviderName %>"
            SelectCommand="SELECT * FROM [users] WHERE (([username] = @username) AND ([password] = @password))">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="username" />
                <asp:SessionParameter Name="password" SessionField="password" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceNewLeads" runat="server" ConnectionString="<%$ ConnectionStrings:ImportedLeadsConnectionString %>" SelectCommand="SELECT CountOfLeadID, telemarketImportResult, ImportDate, printed, sessKey FROM CountImported ORDER BY printed, ImportDate DESC, sessKey DESC">
            <SelectParameters>
                <asp:Parameter DefaultValue="Inserted" Name="telemarketImportResult" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;
        <asp:SqlDataSource ID="SqlDataSourcePrintLog" runat="server" ConnectionString="<%$ ConnectionStrings:ImportedLeadsConnectionString %>"
            SelectCommand="SELECT [sesskey], [ImportDate], [printed] FROM [printlog]" UpdateCommand="UPDATE printlog SET printed = 1 WHERE (sesskey = @sesskey)">
            <UpdateParameters>
                <asp:ControlParameter ControlID="GridViewImported" Name="sesskey" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:TextBox ID="TextBoxFrom" runat="server" Visible="False"></asp:TextBox>
        <asp:TextBox ID="TextBoxTo" runat="server" Visible="False"></asp:TextBox><asp:GridView ID="GridViewUser" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceUsers"
            EmptyDataText="There are no data records to display." Visible="False">
            <Columns>
                <asp:BoundField DataField="userid" HeaderText="userid" ReadOnly="True" SortExpression="userid" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="securityLevel" HeaderText="securityLevel" SortExpression="securityLevel" />
                <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
            </Columns>
        </asp:GridView>
        &nbsp; &nbsp;
        <asp:Button ID="ButtonGo" runat="server" OnClick="ButtonGo_Click" Text="Go" Visible="False" />
    </form>
</body>
</html>
