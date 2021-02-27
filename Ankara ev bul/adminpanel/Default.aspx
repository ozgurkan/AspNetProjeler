<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel/master_admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="adminpanel_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 90%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="color: #FF0000">
                Admin paneline giriş yaptınız.<br />
                <br />
                Soldaki menülerden siteyi yönetebilirsiniz.</td>
        </tr>
    </table>
</asp:Content>

