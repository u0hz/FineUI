﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="grid_groupheader2.aspx.cs"
    Inherits="FineUI.Examples.grid.grid_groupheader2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <x:PageManager ID="PageManager1" runat="server" />
    <x:Grid ID="Grid1" ShowBorder="true" ShowHeader="true" Title="Table" Width="850px"
        runat="server" DataKeyNames="Guid" EnableRowNumber="true" AllowSorting="true"
        SortColumn="HZData1" SortDirection="ASC" OnSort="Grid1_Sort">
        <GroupColumns>
            <x:GridGroupColumn HeaderText="">
            </x:GridGroupColumn>
            <x:GridGroupColumn HeaderText="Henan Province" TextAlign="Center">
                <GroupColumns>
                    <x:GridGroupColumn HeaderText="">
                    </x:GridGroupColumn>
                    <x:GridGroupColumn HeaderText="Zhumadian City" TextAlign="Center">
                        <Columns>
                            <x:BoundField Width="100px" DataField="HZData1" SortField="HZData1" ColumnID="HZData1"
                                HeaderText="Data 1" TextAlign="Center" />
                            <x:BoundField Width="100px" DataField="HZData2" SortField="HZData2" HeaderText="Data 2"
                                TextAlign="Center" />
                        </Columns>
                    </x:GridGroupColumn>
                    <x:GridGroupColumn HeaderText="Luohe City" TextAlign="Center">
                        <Columns>
                            <x:BoundField Width="100px" DataField="HLData1" HeaderText="Data 1" TextAlign="Center" />
                            <x:BoundField Width="100px" DataField="HLData2" HeaderText="Data 2" TextAlign="Center" />
                        </Columns>
                    </x:GridGroupColumn>
                </GroupColumns>
            </x:GridGroupColumn>
            <x:GridGroupColumn HeaderText="Anhui Province" TextAlign="Center">
                <GroupColumns>
                    <x:GridGroupColumn HeaderText="Hefei City" TextAlign="Center">
                        <Columns>
                            <x:BoundField Width="100px" DataField="AHData1" HeaderText="Data 1" TextAlign="Center" />
                            <x:BoundField Width="100px" DataField="AHData2" HeaderText="Data 2" TextAlign="Center" />
                        </Columns>
                    </x:GridGroupColumn>
                    <x:GridGroupColumn HeaderText="Liuan City" TextAlign="Center">
                        <Columns>
                            <x:BoundField Width="100px" DataField="ALData1" HeaderText="Data 1" TextAlign="Center" />
                            <x:BoundField Width="100px" DataField="ALData2" HeaderText="Data 2" TextAlign="Center" />
                        </Columns>
                    </x:GridGroupColumn>
                </GroupColumns>
            </x:GridGroupColumn>
        </GroupColumns>
    </x:Grid>
    <br />
    <br />
    </form>
</body>
</html>