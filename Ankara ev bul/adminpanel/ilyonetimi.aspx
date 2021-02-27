<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel/master_admin.master" AutoEventWireup="true" CodeFile="ilyonetimi.aspx.cs" Inherits="adminpanel_ilyonetimi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 700px;
        }
        .style3
        {
            width: 400px;
        }
        .style4
        {
            width: 600px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style2">
                    <tr>
                        <td style="text-align: center" width="25%">
                            <asp:Button ID="Button1" runat="server" Text="İl Düzenle" 
                                onclick="Button1_Click" />
                        </td>
                        <td style="text-align: center" width="25%">
                            <asp:Button ID="Button2" runat="server" Text="İlçe Düzenle" 
                                onclick="Button2_Click" />
                        </td>
                        <td style="text-align: center" width="25%">
                            <asp:Button ID="Button3" runat="server" Text="Semt Düzenle" 
                                onclick="Button3_Click" />
                        </td>
                        <td style="text-align: center" width="25%">
                            <asp:Button ID="Button4" runat="server" Text="Mahalle Düzenle" />
                        </td>
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
                <asp:Panel ID="pnlil" Visible="false" runat="server">
                
                <table class="style3">
                    <tr>
                        <td width="40%">
                            <asp:DropDownList ID="ddlil" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="ddlil_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td width="40%">
                            <asp:TextBox ID="txtil" runat="server"></asp:TextBox>
                        </td>
                        <td width="20%">
                            <asp:Button ID="guncelleil" runat="server" onclick="guncelleil_Click" 
                                Text="Güncelle" />
                        </td>
                    </tr>
                </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="pnlilce" Visible=false runat="server">
                
                <table class="style4">
                    <tr>
                        <td width="25%">
                            <asp:DropDownList ID="ddl_ilce_il" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="ddl_ilce_il_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td width="25%">
                            <asp:DropDownList ID="ddl_ilce" runat="server" AutoPostBack="True" 
                                Enabled="False" onselectedindexchanged="ddl_ilce_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td width="25%">
                            <asp:TextBox ID="txtilce" runat="server"></asp:TextBox>
                        </td>
                        <td style="text-align: center" width="25%">
                            <asp:Button ID="btnGuncelleilce" runat="server" onclick="btnGuncelleilce_Click" 
                                Text="Güncelle" />
                        </td>
                    </tr>
                </table>
                </asp:Panel>

            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="PnlSemt" Visible=false runat="server">
             
                <table class="style4">
                    <tr>
                        <td width="20%">
                            <asp:DropDownList ID="ddl_il3" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="ddl_il3_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td width="20%">
                            <asp:DropDownList ID="ddl_ilce3" runat="server" AutoPostBack="True" 
                                Enabled="False" onselectedindexchanged="ddl_ilce3_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td width="20%">
                            <asp:DropDownList ID="ddl_semt" runat="server" AutoPostBack="True" 
                                Enabled="False" onselectedindexchanged="ddl_semt_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td width="20%">
                            <asp:TextBox ID="txtsemt" runat="server"></asp:TextBox>
                        </td>
                        <td width="20%">
                            <asp:Button ID="btnGuncelleSemt" runat="server" onclick="btnGuncelleSemt_Click" 
                                Text="Güncelle" />
                        </td>
                    </tr>
                </table>
                   </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

