<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connexion.aspx.cs" Inherits="ProjetMax.Connexion" UICulture="auto"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="connexion">
            <asp:Label ID="Label1" runat="server" Text="Connectez-vous avant de pouvoir acceder au site web d'Elmo" ></asp:Label>
            <br />
            <asp:Label ID="LabelNom" runat="server" Text="Nom:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBoxNom" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNom" runat="server" ErrorMessage="Champ requis!" ControlToValidate="TextBoxNom"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="LabelEmail" runat="server" Text="Email:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Champ requis!" ControlToValidate="TextBoxEmail"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Button ID="ButtonEnvoyer" runat="server" Text="Se connecter" onclick="ButtonEnvoyer_Click"/>
        </div>
    </form>
</body>
</html>
