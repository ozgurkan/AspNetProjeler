<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="adminpanel_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 400px;
        }
        .style3
        {
            width: 273px;
        }
    </style>
</head>
<body style="background-image: url('images/bg_login.jpg'); background-repeat: repeat-x; background-color:#B5FFFF;">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center; font-family: Arial, Helvetica, sans-serif; font-size: 16px; font-weight: bold; color: #000080;">
                    AnkaraEvBul.com Yönetim Paneli</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table align="center" class="style2" style="border: medium double #0099FF">
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:Label ID="lblBilgi" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td width="30%">
                                Kullanıcı Adı:</td>
                            <td class="style3">
                                <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Şifre:</td>
                            <td class="style3">
                                <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style3">
                                <asp:Button ID="btnGiris" runat="server" onclick="btnGiris_Click" 
                                    Text="GİRİŞ" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
