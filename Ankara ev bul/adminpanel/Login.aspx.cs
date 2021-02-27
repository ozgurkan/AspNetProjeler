using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class adminpanel_Login : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGiris_Click(object sender, EventArgs e)
    {
        DataRow drGiris = klas.GetDataRow("Select * from Kullanici Where KullaniciAdi='"+Seo.Temizle( txtKullaniciAdi.Text)+"'and Sifre='"+Seo.Temizle( txtSifre.Text)+"'and GrupId=1");
        if (drGiris != null)
        {
            Session["KullaniciId"] = drGiris["KullaniciId"].ToString();
            Response.Redirect("Default.aspx");
        }
        else
            lblBilgi.Text = "Kullanıcı adı veya şifre hatalı.";
        

    
    
    }
}