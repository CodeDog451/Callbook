<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showCallbook.aspx.cs" Inherits="showCallbook" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Call Book</title>
    <STYLE TYPE="text/css">
     P.breakhere {page-break-after: always}     
</STYLE>
</head>

<body>
    <form id="form1" runat="server">
    <div>
        <asp:PlaceHolder ID="PlaceHolderGridViewArray" runat="server"></asp:PlaceHolder>
        <asp:SqlDataSource ID="SqlDataSourceTelemarketLeads" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) ORDER BY Rate, State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" DefaultValue="" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceState1" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'AK') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceState2" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'AL') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState3" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'AR') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceState4" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'AZ') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState5" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'CA') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState6" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'CN') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceState7" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'CO') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState8" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'CT') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState9" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'DC') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState10" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'DE') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState11" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'FL') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState12" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'GA') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState13" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'HI') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState14" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'IA') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState15" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'ID') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState16" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'IL') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState17" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'IN') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState18" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'KS') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState19" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'KY') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState20" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'LA') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState21" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'MA') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState22" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'MD') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState23" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'ME') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState24" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'MI') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState25" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'MN') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState26" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'MO') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState27" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'MS') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState28" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'MT') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState29" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'NC') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState30" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'ND') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState31" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'NE') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState32" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'NH') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState33" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'NJ') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState34" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'NM') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState35" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'NV') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState36" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'NY') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState37" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'OH') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState38" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'OK') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState39" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'OR') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState40" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'PA') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState41" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'RI') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState42" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'SC') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState43" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'SD') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState44" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'TN') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState45" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'TX') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState46" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'UT') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState47" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'VA') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState48" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'VT') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState49" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'WA') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState50" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'WI') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState51" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'WV') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSourceState52" runat="server" ConnectionString="<%$ ConnectionStrings:telemarketSQLConnectionString1 %>"
            DeleteCommand="DELETE FROM [telemarketLeads] WHERE [lead_Id] = @lead_Id" InsertCommand="INSERT INTO [telemarketLeads] ([lead_DoNotUse], [lead_FirstName], [lead_LastName], [lead_CoApp], [lead_City], [lead_State], [lead_Address], [lead_Zip], [lead_WorkPhone], [lead_HomePhone], [lead_HouseType], [lead_CurrentValue], [lead_DesiredLoan], [lead_1stBalance], [lead_Rate], [lead_FixedAdjust], [lead_Payment], [lead_Late], [lead_Credit], [lead_WorkInfo], [lead_TimePeriod], [lead_Salary], [lead_YouShouldCall], [lead_LookingTo], [lead_Email], [lead_CreateDate], [Sys_Cre_Date], [lead_Premier], [lang], [First_Cre_Date], [verifiedBy], [verified], [Verifed_Date], [mortgageLeadID], [ImportDate], [PersonalTouch], [ManualAdd], [verifierID], [doubleverifierID], [lead_verifed1], [lead_verified], [badLead]) VALUES (@lead_DoNotUse, @lead_FirstName, @lead_LastName, @lead_CoApp, @lead_City, @lead_State, @lead_Address, @lead_Zip, @lead_WorkPhone, @lead_HomePhone, @lead_HouseType, @lead_CurrentValue, @lead_DesiredLoan, @lead_1stBalance, @lead_Rate, @lead_FixedAdjust, @lead_Payment, @lead_Late, @lead_Credit, @lead_WorkInfo, @lead_TimePeriod, @lead_Salary, @lead_YouShouldCall, @lead_LookingTo, @lead_Email, @lead_CreateDate, @Sys_Cre_Date, @lead_Premier, @lang, @First_Cre_Date, @verifiedBy, @verified, @Verifed_Date, @mortgageLeadID, @ImportDate, @PersonalTouch, @ManualAdd, @verifierID, @doubleverifierID, @lead_verifed1, @lead_verified, @badLead)"
            ProviderName="<%$ ConnectionStrings:telemarketSQLConnectionString1.ProviderName %>"
            SelectCommand="SELECT LEFT (lead_FirstName, 15) AS [First Name], LEFT (lead_LastName, 15) AS [Last Name], LEFT (lead_CoApp, 16) AS [Co App], LEFT (lead_City, 15) AS City, lead_State AS State, LEFT (lead_Address, 25) AS Address, LEFT (lead_Zip, 5) AS Zip, CAST(lead_WorkPhone AS numeric) AS [Work Phone], CAST(lead_HomePhone AS numeric) AS [Home Phone], LEFT (lead_HouseType, 13) AS [House Type], CASE WHEN CAST(lead_DesiredLoan AS money) < 30000 THEN NULL ELSE CAST(lead_DesiredLoan AS money) END AS [Desired Loan], CASE WHEN lead_Rate = '0' THEN '' ELSE lead_Rate END AS Rate, LEFT (lead_Credit, 9) AS Credit, LEFT (lead_LookingTo, 15) AS [Want to], '  ' AS [Call 1], '  ' AS [Call 2], '  ' AS [Call 3], '  ' AS [Call 4], '  ' AS [Call 5] FROM telemarketLeads WHERE (First_Cre_Date BETWEEN @from AND @to ) AND (NOT (lead_DoNotUse = N'True') OR lead_DoNotUse IS NULL) AND (lead_State = N'WY') ORDER BY State, [Home Phone], [Work Phone]"
            UpdateCommand="UPDATE [telemarketLeads] SET [lead_DoNotUse] = @lead_DoNotUse, [lead_FirstName] = @lead_FirstName, [lead_LastName] = @lead_LastName, [lead_CoApp] = @lead_CoApp, [lead_City] = @lead_City, [lead_State] = @lead_State, [lead_Address] = @lead_Address, [lead_Zip] = @lead_Zip, [lead_WorkPhone] = @lead_WorkPhone, [lead_HomePhone] = @lead_HomePhone, [lead_HouseType] = @lead_HouseType, [lead_CurrentValue] = @lead_CurrentValue, [lead_DesiredLoan] = @lead_DesiredLoan, [lead_1stBalance] = @lead_1stBalance, [lead_Rate] = @lead_Rate, [lead_FixedAdjust] = @lead_FixedAdjust, [lead_Payment] = @lead_Payment, [lead_Late] = @lead_Late, [lead_Credit] = @lead_Credit, [lead_WorkInfo] = @lead_WorkInfo, [lead_TimePeriod] = @lead_TimePeriod, [lead_Salary] = @lead_Salary, [lead_YouShouldCall] = @lead_YouShouldCall, [lead_LookingTo] = @lead_LookingTo, [lead_Email] = @lead_Email, [lead_CreateDate] = @lead_CreateDate, [Sys_Cre_Date] = @Sys_Cre_Date, [lead_Premier] = @lead_Premier, [lang] = @lang, [First_Cre_Date] = @First_Cre_Date, [verifiedBy] = @verifiedBy, [verified] = @verified, [Verifed_Date] = @Verifed_Date, [mortgageLeadID] = @mortgageLeadID, [ImportDate] = @ImportDate, [PersonalTouch] = @PersonalTouch, [ManualAdd] = @ManualAdd, [verifierID] = @verifierID, [doubleverifierID] = @doubleverifierID, [lead_verifed1] = @lead_verifed1, [lead_verified] = @lead_verified, [badLead] = @badLead WHERE [lead_Id] = @lead_Id">
            <DeleteParameters>
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
                <asp:Parameter Name="lead_Id" Type="Int32" />
            </UpdateParameters>
            <SelectParameters>
                <asp:SessionParameter Name="from" SessionField="from" />
                <asp:SessionParameter Name="to" SessionField="to" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="lead_DoNotUse" Type="String" />
                <asp:Parameter Name="lead_FirstName" Type="String" />
                <asp:Parameter Name="lead_LastName" Type="String" />
                <asp:Parameter Name="lead_CoApp" Type="String" />
                <asp:Parameter Name="lead_City" Type="String" />
                <asp:Parameter Name="lead_State" Type="String" />
                <asp:Parameter Name="lead_Address" Type="String" />
                <asp:Parameter Name="lead_Zip" Type="String" />
                <asp:Parameter Name="lead_WorkPhone" Type="String" />
                <asp:Parameter Name="lead_HomePhone" Type="String" />
                <asp:Parameter Name="lead_HouseType" Type="String" />
                <asp:Parameter Name="lead_CurrentValue" Type="String" />
                <asp:Parameter Name="lead_DesiredLoan" Type="String" />
                <asp:Parameter Name="lead_1stBalance" Type="String" />
                <asp:Parameter Name="lead_Rate" Type="String" />
                <asp:Parameter Name="lead_FixedAdjust" Type="String" />
                <asp:Parameter Name="lead_Payment" Type="String" />
                <asp:Parameter Name="lead_Late" Type="String" />
                <asp:Parameter Name="lead_Credit" Type="String" />
                <asp:Parameter Name="lead_WorkInfo" Type="String" />
                <asp:Parameter Name="lead_TimePeriod" Type="String" />
                <asp:Parameter Name="lead_Salary" Type="String" />
                <asp:Parameter Name="lead_YouShouldCall" Type="String" />
                <asp:Parameter Name="lead_LookingTo" Type="String" />
                <asp:Parameter Name="lead_Email" Type="String" />
                <asp:Parameter Name="lead_CreateDate" Type="DateTime" />
                <asp:Parameter Name="Sys_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="lead_Premier" Type="String" />
                <asp:Parameter Name="lang" Type="String" />
                <asp:Parameter Name="First_Cre_Date" Type="DateTime" />
                <asp:Parameter Name="verifiedBy" Type="String" />
                <asp:Parameter Name="verified" Type="String" />
                <asp:Parameter Name="Verifed_Date" Type="DateTime" />
                <asp:Parameter Name="mortgageLeadID" Type="Int32" />
                <asp:Parameter Name="ImportDate" Type="DateTime" />
                <asp:Parameter Name="PersonalTouch" Type="String" />
                <asp:Parameter Name="ManualAdd" Type="Boolean" />
                <asp:Parameter Name="verifierID" Type="Int32" />
                <asp:Parameter Name="doubleverifierID" Type="Int32" />
                <asp:Parameter Name="lead_verifed1" Type="Boolean" />
                <asp:Parameter Name="lead_verified" Type="Int32" />
                <asp:Parameter Name="badLead" Type="Boolean" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridViewBuilder" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            DataSourceID="SqlDataSourceTelemarketLeads" Font-Names="Arial" Visible="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" Width="1008px" PageSize="23">
            <Columns>
                <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" >
                    <ItemStyle Wrap="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Small" Width="125px" />
                    <HeaderStyle Wrap="False" BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" >
                    <ItemStyle Wrap="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Small" Width="125px" />
                    <HeaderStyle Wrap="False" BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField DataField="Co App" HeaderText="Co App/Cell" SortExpression="Co App" >
                    <ItemStyle Wrap="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="Small" Width="150px" HorizontalAlign="Center" />
                    <HeaderStyle Wrap="False" Font-Size="X-Small" BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" >
                    <ItemStyle Wrap="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Small" Width="130px" />
                    <HeaderStyle Wrap="False" BorderColor="Black" Font-Size="X-Small" />
                </asp:BoundField>
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" >
                    <ItemStyle Wrap="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" Font-Size="Small" Width="10px" />
                    <HeaderStyle Wrap="False" Font-Size="X-Small" BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" >
                    <ItemStyle Font-Size="X-Small" Wrap="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="200px" />
                    <HeaderStyle Wrap="False" BorderColor="Black" Font-Size="X-Small" />
                </asp:BoundField>
                <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" >
                    <ItemStyle Wrap="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Small" Width="10px" />
                    <HeaderStyle Wrap="False" BorderColor="Black" Font-Size="X-Small" />
                </asp:BoundField>
                <asp:BoundField DataField="Home Phone" HeaderText="Home Phone 1" SortExpression=" Home  Phone " DataFormatString="{0: (###) ###-#### }" HtmlEncode="False" >
                    <ItemStyle Wrap="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" HorizontalAlign="Center" Width="150px" Font-Size="Medium" />
                    <HeaderStyle Wrap="False" Width="200px" BorderColor="Black" Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="Work Phone" HeaderText="Home Phone 2" SortExpression="Work Phone" DataFormatString="{0: (###) ###-#### }" HtmlEncode="False" >
                    <ItemStyle Wrap="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" HorizontalAlign="Center" Width="150px" Font-Size="Medium" />
                    <HeaderStyle Wrap="False" HorizontalAlign="Center" Width="200px" BorderColor="Black" Font-Size="Small" />
                </asp:BoundField>
                <asp:BoundField DataField="House Type" HeaderText="House Type" SortExpression="House Type" >
                    <ItemStyle Font-Size="XX-Small" Wrap="True" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" Width="10px" />
                    <HeaderStyle Wrap="True" Font-Size="XX-Small" BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField DataField="Desired Loan" HeaderText="Desired Loan" SortExpression="Desired Loan" DataFormatString="{0:$#,#}" HtmlEncode="False" >
                    <ItemStyle Wrap="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Small" HorizontalAlign="Center" Width="20px" />
                    <HeaderStyle Wrap="False" Font-Size="X-Small" BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField DataField="Credit" HeaderText="Credit" SortExpression="Credit" >
                    <ItemStyle Wrap="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="X-Small" HorizontalAlign="Center" Width="10px" />
                    <HeaderStyle Wrap="False" BorderColor="Black" Font-Size="X-Small" />
                </asp:BoundField>
                <asp:BoundField DataField="Want to" HeaderText="Want to" SortExpression="Want to" >
                    <ItemStyle Font-Size="XX-Small" Wrap="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Narrow" HorizontalAlign="Center" Width="5px" />
                    <HeaderStyle Wrap="False" BorderColor="Black" Font-Size="X-Small" />
                </asp:BoundField>
                <asp:BoundField DataField="Call 1" HeaderText="Call 1" SortExpression="Call 1">
                    <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="1px" />
                    <HeaderStyle Font-Size="X-Small" Wrap="False" BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField DataField="Call 2" HeaderText="Call 2" SortExpression="Call 2">
                    <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="1px" />
                    <HeaderStyle Font-Size="X-Small" Wrap="False" BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField DataField="Call 3" HeaderText="Call 3" SortExpression="Call 3">
                    <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="1px" />
                    <HeaderStyle Font-Size="X-Small" Wrap="False" BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField DataField="Call 4" HeaderText="Call 4" SortExpression="Call 4">
                    <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Width="1px" />
                    <HeaderStyle Font-Size="X-Small" Wrap="False" BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField DataField="Call 5" HeaderText="Call 5" SortExpression="Call 5">
                    <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Wrap="False" Width="1px" />
                    <HeaderStyle Font-Size="X-Small" Wrap="False" BorderColor="Black" />
                </asp:BoundField>
            </Columns>
            <HeaderStyle BackColor="LightGray" ForeColor="Black" BorderColor="Black" />
        </asp:GridView>
        &nbsp;</div>
        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
    </form>
</body>
</html>
