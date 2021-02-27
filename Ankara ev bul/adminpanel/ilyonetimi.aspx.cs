using System.Data;using System.Data.SqlClient; 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminpanel_ilyonetimi : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            il();
            ddlil.Items.Insert(0,new ListItem("seçiniz","0"));

            ilce_il();
            ddl_ilce_il.Items.Insert(0, new ListItem("seçiniz", "0"));

            il3();
            ddl_il3.Items.Insert(0, new ListItem("seçiniz", "0"));
        }
    }  
    void il()
    {
        DataTable dtiller = klas.GetDataTable("Select * from iller order by ilAdi");
        ddlil.DataTextField = "ilAdi";
        ddlil.DataValueField = "ilId";
        ddlil.DataSource = dtiller;
        ddlil.DataBind();
    }
    void ilce_il()
    {
        DataTable dtiller = klas.GetDataTable("Select * from iller order by ilAdi");
        ddl_ilce_il.DataTextField = "ilAdi";
        ddl_ilce_il.DataValueField = "ilId";
        ddl_ilce_il.DataSource = dtiller;
        ddl_ilce_il.DataBind();
    }
    void il3()
    {
        DataTable dtiller = klas.GetDataTable("Select * from iller order by ilAdi");
        ddl_il3.DataTextField = "ilAdi";
        ddl_il3.DataValueField = "ilId";
        ddl_il3.DataSource = dtiller;
        ddl_il3.DataBind();
    }
  
    protected void ddlil_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtil.Text = ddlil.SelectedItem.Text;
    }
    protected void guncelleil_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = klas.baglan();
        SqlCommand cmd = new SqlCommand("Update iller set ilAdi=@ilAdi where ilId="+ddlil.SelectedValue,baglanti);
        cmd.Parameters.Add("ilAdi",txtil.Text);
        cmd.ExecuteNonQuery();
        Response.Redirect("ilyonetimi.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        pnlil.Visible = true;
        pnlilce.Visible = false;
        PnlSemt.Visible = false;
    }

    void ilce()
    {
        DataTable dtilceler = klas.GetDataTable("Select * from ilceler where ilId=" + ddl_ilce_il.SelectedValue + " order by ilceAdi");
        ddl_ilce.DataTextField = "ilceAdi";
        ddl_ilce.DataValueField = "ilceId";
        ddl_ilce.DataSource = dtilceler;
        ddl_ilce.DataBind();
    }
    void ilce3()
    {
        DataTable dtilceler = klas.GetDataTable("Select * from ilceler where ilId=" + ddl_il3.SelectedValue + " order by ilceAdi");
        ddl_ilce3.DataTextField = "ilceAdi";
        ddl_ilce3.DataValueField = "ilceId";
        ddl_ilce3.DataSource = dtilceler;
        ddl_ilce3.DataBind();
    }
    void semt()
    {
        DataTable dtilceler = klas.GetDataTable("Select * from mahallesemt where ilceId=" + ddl_ilce3.SelectedValue + " order by SemtAdi");
        ddl_semt.DataTextField = "semtAdi";
        ddl_semt.DataValueField = "semtId";
        ddl_semt.DataSource = dtilceler;
        ddl_semt.DataBind();
    }

    protected void ddl_ilce_il_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddl_ilce.Enabled = true;
        ilce();
        ddl_ilce.Items.Insert(0, new ListItem("seçiniz", "0"));
    }
    protected void ddl_ilce_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtilce.Text = ddl_ilce.SelectedItem.Text;
    }
    protected void btnGuncelleilce_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = klas.baglan();
        SqlCommand cmd = new SqlCommand("Update ilceler set ilceAdi=@ilceAdi where ilceId=" + ddl_ilce.SelectedValue, baglanti);
        cmd.Parameters.Add("ilceAdi", txtilce.Text);
        cmd.ExecuteNonQuery();
        Response.Redirect("ilyonetimi.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        pnlilce.Visible = true;
        pnlil.Visible = false;
        PnlSemt.Visible = false;
    }
    protected void ddl_il3_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddl_ilce3.Enabled = true;
        ilce3();
        ddl_ilce3.Items.Insert(0, new ListItem("seçiniz", "0"));
    }
    protected void ddl_ilce3_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddl_semt.Enabled = true;
        semt();
        ddl_semt.Items.Insert(0, new ListItem("seçiniz", "0"));
    }
    protected void ddl_semt_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtsemt.Text = ddl_semt.SelectedItem.Text;
    }
    protected void btnGuncelleSemt_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = klas.baglan();
        SqlCommand cmd = new SqlCommand("Update mahellesemt set semtAdi=@semtAdi where mahallesemtId=" + ddl_semt.SelectedValue, baglanti);
        cmd.Parameters.Add("semtAdi", txtsemt.Text);
        cmd.ExecuteNonQuery();
        Response.Redirect("ilyonetimi.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        PnlSemt.Visible = true;
        pnlilce.Visible = false;
        pnlil.Visible = false;
       
    }
}