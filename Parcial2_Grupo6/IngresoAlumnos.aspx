<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoAlumnos.aspx.cs" Inherits="Parcial2_Grupo6.IngresoAlumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ingreso Alumnos</title>
    <link href="src/CSS/style.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <thead>
                    <tr>
                        <th colspan="6">Datos Personales</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td rowspan="2" colspan="2">Datos obligatorios</td>
                        <td> 
                            <asp:Label Text="Apellido" runat="server" />
                        </td>
                        <td>
                            <asp:TextBox runat="server" id="txtApellido"/>
                        </td>
                        <td>
                            <asp:Label Text="Nombre" runat="server" />
                        </td>
                        <td>
                            <asp:TextBox runat="server" id="txtNombre"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label Text="DNI" runat="server" />
                        </td>
                        <td>
                            <asp:TextBox runat="server" id="txtDocumento"/>
                        </td>
                        <td>
                            <asp:Label Text="E-mail" runat="server" />
                        </td>
                        <td>
                            <asp:TextBox runat="server" id="txtEmail"/>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">Preferencias</td>
                        <td>Turno</td>
                        <td colspan="4">
                            <asp:DropDownList runat="server" ID="ddlTurnos"> </asp:DropDownList>
                        </td>
                    </tr>
                </tbody>

                <tfoot>
                    <tr>
                        <td colspan="6">
                            <asp:Button Text="Enviar" runat="server" id="btnEnviar" onClick="Enviar_Click"/>
                            <input type="reset" name="Limpiar" value="Limpiar" />
                        </td>
                    </tr>
                </tfoot>

            </table>
            
<%--            <asp:Label Text="Apellido" runat="server" />
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

            <asp:DropDownList runat="server" ID="ddlTurnos"> </asp:DropDownList>

            <asp:Button Text="Enviar" runat="server" id="btnEnviar" onClick="Enviar_Click"/>
            <br />
            <input type="reset" name="Limpiar" value="Limpiar" />
            <br />
            <asp:Button Text="Ver Listado" runat="server" onClick="Listado_Click"/>--%>
        </div>
    </form>
</body>
</html>
