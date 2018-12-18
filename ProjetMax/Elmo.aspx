<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaitre.Master" AutoEventWireup="true" CodeBehind="Elmo.aspx.cs" Inherits="ProjetMax.Elmo" UICulture="auto"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" PageSize="3">
        
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
            <asp:BoundField DataField="Marque" HeaderText="Marque" SortExpression="Marque" />
            <asp:BoundField DataField="Cout" HeaderText="Cout" SortExpression="Cout" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Id], [Nom], [Marque], [Cout]) VALUES (@Id, @Nom, @Marque, @Cout)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Nom] = @Nom, [Marque] = @Marque, [Cout] = @Cout WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Nom" Type="String" />
            <asp:Parameter Name="Marque" Type="String" />
            <asp:Parameter Name="Cout" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nom" Type="String" />
            <asp:Parameter Name="Marque" Type="String" />
            <asp:Parameter Name="Cout" Type="Decimal" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
<asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableCell>
                ID:<br />
                <asp:TextBox ID="tbID" runat="server"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                Nom:<br />
                <asp:TextBox ID="tbNom" runat="server"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                Marque:<br />
                <asp:TextBox ID="tbMarque" runat="server"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                Cout:<br />
                <asp:TextBox ID="tbCout" runat="server" ></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="btnAdd" runat="server" Text="Ajouter" OnClick="btnAdd_Click" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </asp:Content>
