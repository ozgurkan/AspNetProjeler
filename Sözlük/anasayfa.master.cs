using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;using System.Data;using System.Data.SqlClient; 

public partial class MasterPage : System.Web.UI.MasterPage
{
    Metodlar klas = new Metodlar(); 
protected void Page_Load(object sender, EventArgs e)
    {
       Session["Uye_Id"]=null;

         if (Page.IsPostBack == false)
        {
            DataTable dtkategoriler = klas.GetDataTable("Select * from Kategoriler order by Kategori_Adi");
            ddlKategoriler.DataTextField = "Kategori_Adi";
            ddlKategoriler.DataValueField = "Kategori_Id";
            ddlKategoriler.DataSource = dtkategoriler;
            ddlKategoriler.DataBind();
            ddlKategoriler.Items.Insert(0, new ListItem("Kategori Seçiniz...", "0"));
        }
        
}
protected void lbKelimeler_SelectedIndexChanged(object sender, EventArgs e)
{
    DataRow drAnlam = klas.GetDataRow("Select * from Kelimeler where Kelime_Id=" + lbKelimeler.SelectedItem.Value);
    lblKelime.Text = drAnlam["Kelime_Adi"].ToString();
    lblAnlam.Text = drAnlam["Kelime_Aciklama"].ToString();
    Panel1.Visible = true;
}
protected void ddlKategoriler_SelectedIndexChanged(object sender, EventArgs e)
{
    
    lbKelimeler.Visible = true;
    DataTable dtkelimeler = klas.GetDataTable("Select * from Kelimeler  where Durum=1 and Kategori_Id=" + ddlKategoriler.SelectedItem.Value + "order by Kelime_Adi");
    lbKelimeler.DataTextField = "Kelime_Adi";
    lbKelimeler.DataValueField = "Kelime_Id";
    lbKelimeler.DataSource = dtkelimeler;
    lbKelimeler.DataBind();
}
protected void Button1_Click(object sender, EventArgs e)
{
    DataRow drGiris = klas.GetDataRow("Select * from Uyeler Where Email='" + Seo.Temizle(txtEmail.Text) + "' and Sifre='" + Seo.Temizle(txtSifre.Text) + "'");



    if (drGiris != null)
    {
        Label1.Text = "";
        Session["Uye_Id"] = drGiris["Uye_Id"].ToString();
        Response.Redirect("Uye.aspx");
    }
    else
    {
        Label1.Text = "hatalı giriş";
    }
}
}
