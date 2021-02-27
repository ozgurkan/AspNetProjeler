using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class adminpanel_GrupGuncelle : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    string GrupId = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["KullaniciId"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        GrupId = Request.QueryString["GrupId"];
        if (Page.IsPostBack == false)
        {

            DataRow drGrup = klas.GetDataRow("Select * from kullaniciGrup Where GrupId="+GrupId);
            txtGrupAdi.Text=drGrup["GrupAdi"].ToString();

        }
    }
    protected void btnGuncelle_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = klas.baglan();
        SqlCommand cmd = new SqlCommand("Update kullaniciGrup Set GrupAdi=@GrupAdi Where GrupId="+GrupId,baglanti);
        cmd.Parameters.Add("@GrupAdi",txtGrupAdi.Text);
        cmd.ExecuteNonQuery();
        Response.Redirect("GrupYonetimi.aspx");

    }
}