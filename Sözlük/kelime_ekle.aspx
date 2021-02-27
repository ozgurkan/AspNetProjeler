<%@ Page Title="" Language="C#" MasterPageFile="~/uye_islemleri.master" AutoEventWireup="true" CodeFile="kelime_ekle.aspx.cs" Inherits="kelime_ekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {}
        .style12
        {
            width: 100%;
        }
        .style13
        {}
        .style14
        {}
    </style>
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
    
    <div id="slider_alanı">
        <asp:Panel ID="Panel1" runat="server" CssClass="style5 style11" Height="237px">
            <table class="style12">
                <tr>
                    <td width="20%">
                        &nbsp;</td>
                    <td class="style6" width="50%">
                        Kelime Ekle</td>
                    <td width="30%">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td width="20%">
                        &nbsp;</td>
                    <td class="style6" width="50%">
                        &nbsp;</td>
                    <td width="30%">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Kelime:</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="style14" Height="25px" 
                            Width="242px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Anlam:</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="style13" Height="58px" 
                            TextMode="MultiLine" Width="332px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Ekle" />
                        &nbsp;
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="İptal" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>

        </asp:Panel>
</div><!--slider_alanı divi bitti.-->
</asp:Content>


