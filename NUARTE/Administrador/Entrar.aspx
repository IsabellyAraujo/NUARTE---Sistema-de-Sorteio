<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Entrar.aspx.cs" Inherits="NUARTE.Administrador.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Label ID="LabelUsuaruio" runat="server" Text="Usuário ou Email"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="LabelSenha" runat="server" Text="Senha"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBoxUsuario" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxSenha" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="ButtonLoginEnviar" runat="server" Text="Button" />
                </td>
                <td></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
