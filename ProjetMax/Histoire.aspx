<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaitreNested.master" AutoEventWireup="true" CodeBehind="Histoire.aspx.cs" Inherits="ProjetMax.Histoire" UICulture="auto"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <asp:Label ID="Label1" runat="server" Text="<%$ Resources:histoire %>"></asp:Label>
    <hr />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label2" runat="server" Text="<%$ Resources:image %>"></asp:Label>
    <br />
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/elmohummm.png" Height="279px" OnClick="ImageButton1_Click"/>
    <hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:Label ID="Label3" runat="server" Text="<%$ Resources:lien %>"></asp:Label>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://muppet.wikia.com/wiki/Elmo">LIEN IMPORTANT</asp:HyperLink>
    <hr />
</asp:Content>
