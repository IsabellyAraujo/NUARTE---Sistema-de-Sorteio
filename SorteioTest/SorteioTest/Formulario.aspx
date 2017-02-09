<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="SorteioTest.Formulario" Theme="estilo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mostra de Teatro 2016.2</title>
    <style type="text/css">
        .auto-style1 {
            width: 159px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="corpo">
            <div id="header">
                <p>
                    <h1>Mostra de Teatro 2016.2</h1>
                    <p>Formulário de inscrição para a Mostra de Teatro 2016.2 da disciplina de Artes Cênicas, sob coordenação das professoras Marinalva Moura e Elane Simões.</p>
                </p>
                <hr>
            </div>
            <div id="corpo-form">
                <table>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Nome Completo"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" Text="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label2" runat="server" Text="RG:"></asp:Label>&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="000.000.000"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2" Text="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="08/03" />
                        </td>
                        <td>18H - FILHOS DO BRASIL – inspirado em “A invasão” – CIA TEATRAL INVERNIA – PROFª MARINALVA 
                        <br />
                            19H - CORRA QUE O INSPETOR VEM AÍ – Inspirada em "O inspetor Geral” CIA TEATRAL LOREM IPSUM – PROFª MARINALVA
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><hr /></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:CheckBox ID="CheckBox2" runat="server" Text="09/03" />
                        </td>
                        <td>17H – MARAT/SADE: orates da revolução – Livre adaptação de “Marat/Sade” CIA TEATRAL DESCONSOLADOS – PROFª. MARINALVA 
                        <br />
                            18H – CABARÉ VALENTIM – Livre adaptação... CIA TEATRAL EVOÉ – PROFº LEANDRO
                        <br />
                            19H – O CAVALEIRO DA TRISTE FIGURA – Livre adaptação... CIA INFORTÚNIO – PROFº LEANDRO 
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><hr /></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:CheckBox ID="CheckBox3" runat="server" Text="10/03" />
                        </td>
                        <td>17H – A CASA É MINHA – Inspirada em “Quem casa quer casa” COMPANHIA TEATRAL CIAXANDO – PROFª MARINALVA 
                        <br />
                            18H – ALBÚM DE FAMÍLIA – Livre adaptação... VOLÚPIA CIA TEATRAL – PROFº LEANDRO 
                        <br />
                            19H – PROCURA-SE UM JEEP Livre adaptação "Um homem é um homem" CIA BALBÚRDIA – PROFª MARINALVA 
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Button ID="Button1" runat="server" Text="Enviar" class="btn"/>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
