<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoAlumnos.aspx.cs" Inherits="Parcial2_Grupo6.IngresoAlumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ingreso Alumnos</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Apellido" runat="server" />
            <asp:TextBox runat="server" id="txtApellido"/>
            <br />

            <asp:Label Text="Nombre" runat="server" />
            <asp:TextBox runat="server" id="txtNombre"/>
            <br />

            <asp:Label Text="DNI" runat="server" />
            <asp:TextBox runat="server" id="txtDocumento"/>
            <br />

            <asp:Label Text="E-mail" runat="server" />
            <asp:TextBox runat="server" id="txtEmail"/>
            <br />

            <%--<asp:Label Text="Seleccione turno:" runat="server" />--%>
            <asp:DropDownList runat="server" ID="ddlTurnos"> </asp:DropDownList>

            <asp:Button Text="Enviar" runat="server" id="btnEnviar" onClick="Enviar_Click"/>
            <asp:Button Text="Ver Listado" runat="server" onClick="Listado_Click"/>
            <input type="reset" name="Limpiar" value="Limpiar" />
        </div>
    </form>
</body>
</html>
