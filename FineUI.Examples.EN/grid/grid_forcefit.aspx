﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_forcefit.aspx.cs" Inherits="FineUI.Examples.grid.grid_forcefit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" AutoSizePanelID="Grid1" runat="server" />
    <x:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="Table (ForceFitAllTime=true)(Change page size to observe table column change)" Width="900px"
        ForceFitAllTime="true" runat="server" DataKeyNames="Guid">
        <Columns>
            <x:TemplateField Width="50px">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="100px" DataField="Name" DataFormatString="{0}" HeaderText="Name" />
            <x:TemplateField Width="50px" HeaderText="Gender">
                <ItemTemplate>
                    <%-- Container.DataItem's type is System.Data.DataRowView or user-defined custom type --%>
                    <%--<asp:Label ID="Label2" runat="server" Text='<%# GetGender(DataBinder.Eval(Container.DataItem, "Gender")) %>'></asp:Label>--%>
                    <asp:Label ID="Label3" runat="server" Text='<%# GetGender(Eval("Gender")) %>'></asp:Label>
                </ItemTemplate>
            </x:TemplateField>
            <x:BoundField Width="50px" DataField="EntranceYear" HeaderText="Entrance Year" />
            <x:CheckBoxField Width="50px" RenderAsStaticField="true" DataField="AtSchool" HeaderText="At School" />
            <x:HyperLinkField Width="200px" HeaderText="Major" DataToolTipField="Major" DataTextField="Major"
                DataTextFormatString="{0}" DataNavigateUrlFields="Major" DataNavigateUrlFormatString="http://gsa.ustc.edu.cn/search?q={0}"
                DataNavigateUrlFieldsEncode="true" Target="_blank" />
            <x:ImageField Width="50px" DataImageUrlField="Group" DataImageUrlFormatString="~/images/16/{0}.png"
                HeaderText="Group"></x:ImageField>
            <x:BoundField Width="100px" DataField="LogTime" DataFormatString="{0:yy-MM-dd}"
                HeaderText="Register Date" />
        </Columns>
    </x:Grid>
    <br />
    <br />
    </form>
</body>
</html>