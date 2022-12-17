<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="ExamenFinal.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="/Css/Menu.css"/>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style type="text/css">
         .auto-style1 {
             font-family: Candara;
             font-size: 60px;
         }
         .auto-style2 {
             font-size: x-large;
         }
         .auto-style3 {
             left: 0px;
             top: 0px;
             width: 628px;
         }
     </style>
</head>
<body>

    <p class="auto-style2">
        <span lang="EN-US">Sistema de Vehiculos<o:p></o:p></span>
    </p>

    <h1 class="auto-style1">Sistema de Vehiculos</h1>
    <form id="form1" runat="server" />
    <nav class="auto-style3">

        <asp:HyperLink ID="Lusuarios" runat="server" NavigateUrl="Usuario.aspx" Text="USUARIOS" />
        <asp:HyperLink ID="Lplacas" runat="server" NavigateUrl="Placa.aspx" Text="PLACAS" />
        <asp:HyperLink ID="Lreportes" runat="server" NavigateUrl="Reporte.aspx" Text="REPORTES" />
        <asp:HyperLink ID="Lsalir" runat="server" NavigateUrl="Login.aspx" Text="SALIR" />
        <div class="animation start-home"></div>
    </nav>

    <p>
        &nbsp;
    </p>
    <form>
    <p>
    </p>
    <p>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>

