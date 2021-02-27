using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adminpanel_GrupYonetimi : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    string GrupId = ""; string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["KullaniciId"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        GrupId = Request.QueryString["GrupId"];
        islem = Request.QueryString["islem"];
        if (islem == "sil")
        {
            klas.cmd("Delete from KullaniciGrup Where GrupId="+GrupId);
        }


        DataTable dtGruplar = klas.GetDataTable("Select * from kullaniciGrup");
        rpGruplar.DataSource = dtGruplar;
        rpGruplar.DataBind();
    }
    protected void btnEkle_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = klas.baglan();
        SqlCommand cmd = new SqlCommand("Insert into kullaniciGrup(GrupAdi) values (@GrupAdi)",baglanti);
        cmd.Parameters.Add("GrupAdi",txtGrupAdi.Text);
        cmd.ExecuteNonQuery();
        Response.Redirect("GrupYonetimi.aspx");

    }
}