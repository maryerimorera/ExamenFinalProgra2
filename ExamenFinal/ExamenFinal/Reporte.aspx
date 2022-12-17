﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reporte.aspx.cs" Inherits="ExamenFinal.Reporte" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Bahnschrift;
            font-size: xx-large;
            color: #333300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1">REPORTE DE PLACAS Y USUARIOS</span><br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdPlaca" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="279px" Width="594px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="IdPlaca" HeaderText="IdPlaca" InsertVisible="False" ReadOnly="True" SortExpression="IdPlaca" />
                <asp:BoundField DataField="NumPlaca" HeaderText="NumPlaca" SortExpression="NumPlaca" />
                <asp:BoundField DataField="IdUsuarioP" HeaderText="IdUsuarioP" SortExpression="IdUsuarioP" />
                <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VEHICULOSConnectionString2 %>" SelectCommand="SELECT [IdPlaca], [NumPlaca], [IdUsuarioP], [Monto] FROM [PLACA]"></asp:SqlDataSource>
    </form>
</body>
</html>
