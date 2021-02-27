<%@ Page Title="" Language="C#" MasterPageFile="~/uye_ol.master" AutoEventWireup="true" CodeFile="uye_ol.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    
<div id="sol_alan">
    
   
</div><!--sol_alan divi bitti-->
</asp:Content>



<asp:Content ID="Content4" runat="server" contentplaceholderid="head">
    <style type="text/css">

    
        .style31
        {
            width: 267px;
        }
        .style32
        {
            width: 131px;
            height: 45px;
        }
        .style33
        {
            width: 267px;
            height: 45px;
        }
        .style34
        {
            height: 45px;
        }
      
       .hata_mesaj
       {
           font-family: Arial, Helvetica, sans-serif;
    color: #FF0000;
    font-size: 12px;
           
       }
    
        .style35
        {
            height: 43px;
        }
    
        </style>
</asp:Content>




<asp:Content ID="Content5" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    
    <div id="slider_alanı">
      
	 <table style="width: 696px; height: 639px">
            <tr>
                <td class="style30" colspan="3">
                    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
                    </ajaxToolkit:ToolkitScriptManager>
                </td>
            </tr>
            <tr>
                <td class="style34">
                    </td>
                <td class="style33">
                    <asp:Label ID="lblBilgi" runat="server" Font-Bold="True" ForeColor="Red" 
                        AssociatedControlID="txtEmail"></asp:Label>
                </td>
                <td class="style34" >
                    </td>
            </tr>
            <tr>
                <td class="style32" >
                    Email:</td>
                <td class="style33" >
                    <asp:TextBox ID="txtEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style34" >
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmail" CssClass="hata_mesaj" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        Display="Dynamic" >Mail adresiniz uygun değildir.</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtEmail" CssClass="hata_mesaj" Display="Dynamic">Email boş geçilemez.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style34" >
                    Şifre:</td>
                <td class="style33">
                    <asp:TextBox ID="txtSifre" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="style34" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtSifre" CssClass="hata_mesaj">Şifre Boş Geçilemez.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style34" >
                    Şifre(Tekrar):</td>
                <td class="style33">
                    <asp:TextBox ID="txtSifre1" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="style34" >
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtSifre" ControlToValidate="txtSifre1" CssClass="hata_mesaj">Şifreler Uyuşmuyor.</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style34" >
                    Ad:</td>
                <td class="style33">
                    <asp:TextBox ID="txtAd" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style34" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtAd" CssClass="hata_mesaj">Ad Boş Geçilemez.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style34" >
                    Soyad:</td>
                <td class="style33">
                    <asp:TextBox ID="txtSoyad" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style34" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtSoyad" CssClass="hata_mesaj">Soyad Boş Geçilemez.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style34" >
                    Kullanıcı Adı:</td>
                <td class="style33">
                    <asp:TextBox ID="txtKullaniciAdi" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style34" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtKullaniciAdi" CssClass="hata_mesaj">Kullanıcı Adı Boş Geçilemez.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style34" >
                    Doğum Tarihi:</td>
                <td class="style33">
                   
                            
                            
                                     <asp:TextBox ID="txtDogum" runat="server" Width="180px"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtDogum" DefaultView="Years">
                    </ajaxToolkit:CalendarExtender>
                 
                            
                            
                   
                            
                </td>
                <td class="style34" >
                    </td>
            </tr>
            <tr>
                <td class="style34" >
                    Cinsiyet:</td>
                <td class="style33">
                    <asp:RadioButton ID="rdErkek" runat="server" Checked="True" Text="Erkek" GroupName="Cinsiyet" />
                    <asp:RadioButton ID="rdBayan" runat="server" Text="Bayan" GroupName="Cinsiyet"  />
                </td>
                <td class="style34" >
                    </td>
            </tr>
            <tr>
                <td class="style34" >
                    Resim:</td>
                <td class="style33">
                    <asp:FileUpload ID="fuResim" runat="server" Height="27px" Width="278px" 
                        CssClass="style35" />
                </td>
                <td class="style34" >
                    </td>
            </tr>
            <tr>
                <td class="style34" >
                    </td>
                <td class="style33">
                    </td>
                <td class="style34" >
                    </td>
            </tr>
            <tr>
                <td class="style30" >
                    &nbsp;</td>
                <td class="style31">
                    <asp:Button ID="btnUyeol" runat="server" Text="Üye Ol" Font-Bold="True" 
                        Height="32px" Width="88px" onclick="btnUyeol_Click" />
                </td>
                <td >
                    &nbsp;</td>
            </tr>
        </table>
   
</div><!--slider_alanı divi bitti.-->
</asp:Content>












