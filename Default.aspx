<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Call Book Printer</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table bgcolor="#eff3fb" border="0" cellpadding="4" cellspacing="0" style="border-collapse: collapse">
            <tr>
                <td>
                    <table border="0" cellpadding="0">
                        <tr>
                            <td align="center" colspan="2" style="font-weight: bold; font-size: 0.9em; color: white;
                                background-color: #507cd1">
                                Log In</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" ForeColor="Black">User Name:</asp:Label></td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server" EnableViewState="False" Font-Size="0.8em"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                    ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="LoginMain">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" ForeColor="Black">Password:</asp:Label></td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" EnableViewState="False" Font-Size="0.8em"
                                    TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                    ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="LoginMain">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color: red">
                                <asp:Literal ID="Literal1" runat="server" EnableViewState="False"></asp:Literal>
                                <asp:Label ID="LabelFailLogin" runat="server" Text="Login Fail - Check Username and Password"
                                    Visible="False"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2" style="height: 17px">
                                <asp:Button ID="LoginButton" runat="server" BackColor="White" BorderColor="#507CD1"
                                    BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana"
                                    Font-Size="0.8em" ForeColor="#284E98" OnClick="LoginButton_Click" Text="Log In"
                                    ValidationGroup="LoginMain" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        &nbsp;
        <table align="left" border="0" style="width: 200px" >
            <tr>
                <td  align="center" >
        <asp:Label ID="LabelMessage" runat="server" Font-Bold="True" Font-Size="Medium"
            ></asp:Label></td>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
        </table>
        <asp:GridView ID="GridViewUser" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceUsers"
            EmptyDataText="There are no data records to display." Visible="False">
            <Columns>
                <asp:BoundField DataField="userid" HeaderText="userid" ReadOnly="True" SortExpression="userid" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="securityLevel" HeaderText="securityLevel" SortExpression="securityLevel" />
                <asp:BoundField DataField="fullname" HeaderText="fullname" SortExpression="fullname" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:callbookConnectionString1 %>"
            ProviderName="<%$ ConnectionStrings:callbookConnectionString1.ProviderName %>"
            SelectCommand="SELECT * FROM [users] WHERE (([username] = @username) AND ([password] = @password))">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="username" />
                <asp:SessionParameter Name="password" SessionField="password" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
