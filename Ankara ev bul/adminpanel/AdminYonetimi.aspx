<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel/master_admin.master" AutoEventWireup="true" CodeFile="AdminYonetimi.aspx.cs" Inherits="adminpanel_AdminYonetimi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <table align="left" class="style2">
                    <tr>
                        <td width="45%">
                            Kullanıcı Adı:</td>
                        <td>
                            <asp:TextBox ID="txtAra" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnAra" runat="server" Text="Ara" onclick="btnAra_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="lblAra" runat="server" Font-Size="11pt" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="dlAra" runat="server" CellPadding="4" ForeColor="#333333" 
                    Width="100%">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        <table class="style1" style="font-size: 12px">
                            <tr>
                                <td width="30%">
                                    Kullanıcı<br /> Adı</td>
                                <td width="30%">
                                    Ad
                                    <br />
                                    Soyad</td>
                                <td width="20%">
                                    Görevi</td>
                                <td width="10%">
                                    Düzenle</td>
                                <td width="10%">
                                    Sil</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemStyle BackColor="#EFF3FB" />
                    <ItemTemplate>
                        <table class="style1" style="font-size: 12px">
                            <tr>
                                <td width="30%">
                                    <%#Eval("KullaniciAdi") %></td>
                                <td width="30%">
                                    <%#Eval("AdSoyad") %></td>
                                <td width="20%">
                                     <%#Eval("GrupAdi") %></td>
                                <td width="10%">
                                    <img border="0" height="30" src="images/ikonlar/kul_düzenle.png" />
                                    </td>
                                <td width="10%">
                                  <a href="AdminYonetimi.aspx?KullaniciId=<%#Eval("KullaniciId") %>&islem=sil">  <img border="0" height="30" src="images/ikonlar/kul_sil.png" /></a>
                                    </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td>
                            <asp:Button ID="btnYonetici" runat="server" onclick="btnYonetici_Click" 
                                Text="Yöneticiler" />
                        </td>
                        <td>
                            <asp:Button ID="btnYardimci" runat="server" Text="Yardımcı Yöneticiler" 
                                onclick="btnYardimci_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnEmlakci" runat="server" Text="Emlakçılar" 
                                onclick="btnEmlakci_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnKullanici" runat="server" Text="Kullanıcılar" 
                                onclick="btnKullanici_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnSon" runat="server" Text="Son 20 Üye" 
                                onclick="btnSon_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="dlKullanici" runat="server" CellPadding="4" ForeColor="#333333" 
                    Width="100%">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        <table class="style1" style="font-size: 12px">
                            <tr>
                                <td width="30%">
                                    Kullanıcı<br /> Adı</td>
                                <td width="30%">
                                    Ad
                                    <br />
                                    Soyad</td>
                                <td width="20%">
                                    Görevi</td>
                                <td width="10%">
                                    Düzenle</td>
                                <td width="10%">
                                    Sil</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemStyle BackColor="#EFF3FB" />
                    <ItemTemplate>
                        <table class="style1" style="font-size: 12px">
                            <tr>
                                <td width="30%">
                                    <%#Eval("KullaniciAdi") %></td>
                                <td width="30%">
                                    <%#Eval("AdSoyad") %></td>
                                <td width="20%">
                                     <%#Eval("GrupAdi") %></td>
                                <td width="10%">
                                  <a href="KullaniciDuzenle.aspx?KullaniciId=<%#Eval("KullaniciId") %>">  <img border="0" height="30" src="images/ikonlar/kul_düzenle.png" /></a>
                                    </td>
                                <td width="10%">
                                    <a href="AdminYonetimi.aspx?KullaniciId=<%#Eval("KullaniciId") %>&islem=sil"><img border="0" height="30" src="images/ikonlar/kul_sil.png" /></a>
                                    </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

