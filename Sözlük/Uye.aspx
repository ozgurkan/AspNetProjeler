<%@ Page Title="" Language="C#" MasterPageFile="~/uye_islemleri.master" AutoEventWireup="true" CodeFile="Uye.aspx.cs" Inherits="Uye1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder4">
    <div id="kullanici_sag">
        <asp:Panel ID="Panel3" runat="server" CssClass="style6" Height="76px">
            <div class="style6">
                <span class="style7"><strong><span class="style10">Hoşgeldin:&nbsp;</span>
                </strong></span>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                <br />
                <a href="kelime_ekle.aspx"><span class="style8"><em><strong>Kelime Ekle</strong></em></span></a><em><strong> |
                </strong></em><a href="#"><span class="style8"><em><strong>Bilgilerim </strong>
                </em></span></a><em><strong>| </strong></em><a  href="Default.aspx">
                <span class="style9"><em><strong>Çıkış</strong></em></span></a></div>
        </asp:Panel>
    </div>
</asp:Content>



