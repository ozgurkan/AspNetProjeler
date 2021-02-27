<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel/master_admin.master" AutoEventWireup="true" CodeFile="GrupYonetimi.aspx.cs" Inherits="adminpanel_GrupYonetimi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 500px;
        }
        .style2
        {
            width: 600px;
        }
        .style3
        {
            width: 37px;
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td width="20%" style="font-weight: bold">
                &nbsp;</td>
            <td width="%80">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="20%">
                Grup Adı:</td>
            <td width="%80">
                <asp:TextBox ID="txtGrupAdi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnEkle" runat="server" onclick="btnEkle_Click" Text="Ekle" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

    <table align="center" class="style2">
        <asp:Repeater ID="rpGruplar" runat="server">
        <ItemTemplate>
        <tr>
            <td width="60%">
                <%#Eval("GrupAdi") %></td>
            <td width="20%">
              <a href="GrupGuncelle.aspx?GrupId=<%#Eval("GrupId") %>">Düzenle<img border="0" align="middle" src="images/ikonlar/kul_düzenle.png" style="height: 25px" /></a> 
                </td>
           
            <td width="20%">
            
                <a href="GrupYonetimi.aspx?GrupId=<%#Eval("GrupId") %>&islem=sil"><img border="0" align="middle"  src="images/ikonlar/kul_sil.png" style="height: 28px" /></a>
                </td>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
        
    </table>

</asp:Content>

