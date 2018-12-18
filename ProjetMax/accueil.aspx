<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaitre.Master" AutoEventWireup="true" CodeBehind="accueil.aspx.cs" Inherits="ProjetMax.accueil" UICulture="auto"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="<%$ Resources:Titre %>"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="<%$ Resources:Infos %>"></asp:Label>
    <br /><br />
    <asp:Label ID="Label3" runat="server" Text="<%$ Resources:Nom %>"></asp:Label>
    <br />
    <asp:Label ID="LabelNom" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" Text="<%$ Resources:Email %>"></asp:Label>
    <br />
    <asp:Label ID="LabelEmail" runat="server" Text=""></asp:Label>
    <br /><br /><br /><br /><br /><br />
    <asp:Label ID="Label5" runat="server" Text="<%$ Resources:Passion %>"></asp:Label>
    <br />
    <asp:Label ID="Label6" runat="server" Text="<%$ Resources:Regroupement %>"></asp:Label>
    <br />
    <asp:Label ID="Label7" runat="server" Text="<%$ Resources:Gentil %>"></asp:Label>
</asp:Content>
