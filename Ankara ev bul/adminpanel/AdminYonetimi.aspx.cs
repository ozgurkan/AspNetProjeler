﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class adminpanel_AdminYonetimi : System.Web.UI.Page
{ 
    Metodlar klas = new Metodlar();
    string aranacak = "";
    string islem = "";
    string KullaniciId = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["KullaniciId"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        try
        {
            aranacak = Request.QueryString["aranacak"];
            islem = Request.QueryString["islem"];
            KullaniciId = Request.QueryString["KullaniciId"];
        }
        catch (Exception)
        {}
        if (islem == "sil")
        {
            klas.cmd("Delete  From Kullanici Where KullaniciId="+KullaniciId);
            Response.Redirect("AdminYonetimi.aspx");
        }
        if (aranacak != null)
        {
            DataTable dtAra = klas.GetDataTable("SELECT dbo.Kullanici.*, dbo.KullaniciGrup.GrupAdi FROM  dbo.Kullanici INNER JOIN dbo.KullaniciGrup ON dbo.Kullanici.GrupId = dbo.KullaniciGrup.GrupId Where AdSoyad like '%" + aranacak + "%' or  KullaniciAdi like '%" + aranacak + "%'  ");
            dlAra.DataSource = dtAra;
            dlAra.DataBind();

            if (dtAra.Rows.Count > 0)
            {
                dlAra.Visible = true;
                lblAra.Text = dtAra.Rows.Count.ToString() + " Adet kullanıcı bulunmuştur.";
            }
            else
            {
                dlAra.Visible = false;
                lblAra.Text = "Aradığınız isimde bir kullanıcı bulunamadı.";
            }

        }
     
    }
    protected void btnYonetici_Click(object sender, EventArgs e)
    {
        DataRow drKullanici = klas.GetDataRow("Select GrupId from KullaniciGrup Where GrupAdi='"+"Yönetici"+"'");
        DataTable dtKullanici = klas.GetDataTable("SELECT dbo.Kullanici.*, dbo.KullaniciGrup.GrupAdi FROM  dbo.Kullanici INNER JOIN dbo.KullaniciGrup ON dbo.Kullanici.GrupId = dbo.KullaniciGrup.GrupId Where dbo.Kullanici.GrupId="+drKullanici["GrupId"].ToString());
        dlKullanici.DataSource=dtKullanici;
        dlKullanici.DataBind();
        if (dtKullanici.Rows.Count == 0)
            dlKullanici.Visible = false;
        else
            dlKullanici.Visible = true;

    }
    protected void btnYardimci_Click(object sender, EventArgs e)
    {
        DataRow drKullanici = klas.GetDataRow("Select GrupId from KullaniciGrup Where GrupAdi='" + "Yardımcı Yönetici" + "'");
        DataTable dtKullanici = klas.GetDataTable("SELECT dbo.Kullanici.*, dbo.KullaniciGrup.GrupAdi FROM  dbo.Kullanici INNER JOIN dbo.KullaniciGrup ON dbo.Kullanici.GrupId = dbo.KullaniciGrup.GrupId Where dbo.Kullanici.GrupId=" + drKullanici["GrupId"].ToString());
        dlKullanici.DataSource = dtKullanici;
        dlKullanici.DataBind();
        if (dtKullanici.Rows.Count == 0)
            dlKullanici.Visible = false;
        else
            dlKullanici.Visible = true;
    }
    protected void btnEmlakci_Click(object sender, EventArgs e)
    {
        DataRow drKullanici = klas.GetDataRow("Select GrupId from KullaniciGrup Where GrupAdi='" + "Emlakçı" + "'");
        DataTable dtKullanici = klas.GetDataTable("SELECT dbo.Kullanici.*, dbo.KullaniciGrup.GrupAdi FROM  dbo.Kullanici INNER JOIN dbo.KullaniciGrup ON dbo.Kullanici.GrupId = dbo.KullaniciGrup.GrupId Where dbo.Kullanici.GrupId=" + drKullanici["GrupId"].ToString());
        dlKullanici.DataSource = dtKullanici;
        dlKullanici.DataBind();
        if (dtKullanici.Rows.Count == 0)
            dlKullanici.Visible = false;
        else
            dlKullanici.Visible = true;
    }
    protected void btnKullanici_Click(object sender, EventArgs e)
    {
        DataRow drKullanici = klas.GetDataRow("Select GrupId from KullaniciGrup Where GrupAdi='" + "Kullanıcı" + "'");
        DataTable dtKullanici = klas.GetDataTable("SELECT dbo.Kullanici.*, dbo.KullaniciGrup.GrupAdi FROM  dbo.Kullanici INNER JOIN dbo.KullaniciGrup ON dbo.Kullanici.GrupId = dbo.KullaniciGrup.GrupId Where dbo.Kullanici.GrupId=" + drKullanici["GrupId"].ToString());
        dlKullanici.DataSource = dtKullanici;
        dlKullanici.DataBind();
        if (dtKullanici.Rows.Count == 0)
            dlKullanici.Visible = false;
        else
            dlKullanici.Visible = true;
    }
    protected void btnSon_Click(object sender, EventArgs e)
    {
        DataTable dtKullanici = klas.GetDataTable("SELECT Top 20 dbo.Kullanici.*, dbo.KullaniciGrup.GrupAdi FROM  dbo.Kullanici INNER JOIN dbo.KullaniciGrup ON dbo.Kullanici.GrupId = dbo.KullaniciGrup.GrupId ");
        dlKullanici.DataSource = dtKullanici;
        dlKullanici.DataBind();

        if (dtKullanici.Rows.Count == 0)
            dlKullanici.Visible = false;
        else
            dlKullanici.Visible = true;
    }
    protected void btnAra_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminYonetimi.aspx?aranacak="+ Seo.Temizle(txtAra.Text));
    }
}