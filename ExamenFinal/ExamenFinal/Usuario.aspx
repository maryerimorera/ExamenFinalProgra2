<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="ExamenFinal.Usuario" %>

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
        .auto-style2 {
            font-family: Bahnschrift;
            font-size: medium;
            color: #333300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style1">
            Opciones sobre usuarios</p>
        <p class="auto-style1">
            &nbsp;</p>
        <p id="Usuario" class="auto-style2">
            Si desea agregar un nuevo usuario, complete los siguientes valores</p>
        <p class="auto-style2">
            Usuario<asp:TextBox ID="tusuario" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style2">
            Clave<asp:TextBox ID="tclave" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style2">
            Nombre<asp:TextBox ID="tnombre" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style2">
            Apellido<asp:TextBox ID="tapellido" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style1">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" />
        </p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style1">
            &nbsp;</p>
    </form>
</body>
</html>
