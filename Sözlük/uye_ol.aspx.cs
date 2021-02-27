using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;using System.Data;using System.Data.SqlClient;
using System.IO;
using System.Drawing; 

public partial class Default2 : System.Web.UI.Page
{
Metodlar klas = new Metodlar();
int sayi; int sayi2;
    protected void Page_Load(object sender, EventArgs e)
    {
        Random sayi2 = new Random();
        sayi = sayi2.Next();

    }
    protected void btnUyeol_Click(object sender, EventArgs e)
    {
        string cinsiyet = ""; string resimadi = ""; string uzanti = "";

        if (rdErkek.Checked == true)
            cinsiyet = "Erkek";
        else
            cinsiyet = "Bayan";

        DataRow drMail = klas.GetDataRow("Select * From Uyeler where Email='" + Seo.Temizle(txtEmail.Text) + "'");

        //resim yükleme işlemleri yapılıyor.
        if (fuResim.HasFile)
        {
            uzanti = Path.GetExtension(fuResim.PostedFile.FileName);
            resimadi = Seo.Temizle(txtEmail.Text) + DateTime.Now.Day + uzanti;
            fuResim.SaveAs(Server.MapPath("uyeresimleri/silinecek" + uzanti));

            int deger = 250;//resmin ufaltılacagı boyut
            Bitmap resim = new Bitmap(Server.MapPath("uyeresimleri/silinecek" + uzanti));//silinecek resmimizi bitmap nesnesi yapıyoruz.
            using (Bitmap yeniresim = resim)
            {
                double Yukseklik = yeniresim.Height;
                double Genislik = yeniresim.Width;
                double Oran = 0;
                if (Genislik > deger)//boyutlandırma burada yapılıyor.
                {
                    Oran = Genislik / Yukseklik;//yeni oran belirlendi
                    Genislik = deger;//genislik belirlediğimiz degere ayarlanıyor.
                    Yukseklik = deger / Oran;//yeni yükseklik degeri ayarlanıyor.

                    Size yenidegerler = new Size(Convert.ToInt32(Genislik), Convert.ToInt32(Yukseklik));//yeni boyutlandırma yapıldı.
                    Bitmap sonresim = new Bitmap(yeniresim, yenidegerler);//bitmap yeni değerlerle boyutlandırıldı.
                    sonresim.Save(Server.MapPath("uyeresimleri/" + resimadi));//yeni değerlere sahip resim kaydediliyor.

                    sonresim.Dispose();//bitmapler kapatılıyor.
                    yeniresim.Dispose();//bitmapler kapatılıyor.
                    resim.Dispose();//bitmapler kapatılıyor.
                }
                else
                {
                    fuResim.SaveAs(Server.MapPath("uyeresimleri/" + resimadi));//eger yüklenecek resim deger değişkeninden ufaksa direkt yüklenecek.
                }
            }
            FileInfo fisilinecek = new FileInfo(Server.MapPath("uyeresimleri/silinecek" + uzanti));//ilk başta oluşturdugumuz sahte resmi siliyoruz.
            fisilinecek.Delete();
        }
        else
        {
            if (rdErkek.Checked)

                resimadi = "ResimYok.png";
            else
                resimadi = "ResimYok2.png";

        }
        if (drMail == null)
        {

            SqlConnection baglanti = klas.baglan();
            SqlCommand cmd = new SqlCommand("insert into Uyeler (Email,Sifre,Ad,Soyad,Kullanici_Adi,Dogum_Tarihi,Cinsiyet,Resim,Sayi) values (@Email,@Sifre,@Ad,@Soyad,@Kullanici_Adi,@Dogum_Tarihi,@Cinsiyet,@Resim,@Sayi)", baglanti);
            cmd.Parameters.Add("Email", Seo.Temizle(txtEmail.Text));
            cmd.Parameters.Add("Sifre", Seo.Temizle(txtSifre.Text));
            cmd.Parameters.Add("Ad", txtAd.Text);
            cmd.Parameters.Add("Soyad", txtSoyad.Text);
            cmd.Parameters.Add("Kullanici_Adi", txtKullaniciAdi.Text);
            cmd.Parameters.Add("Dogum_Tarihi", txtDogum.Text);
            cmd.Parameters.Add("Cinsiyet", cinsiyet);
            cmd.Parameters.Add("Resim", resimadi);
            cmd.Parameters.Add("Sayi", sayi);
            cmd.ExecuteNonQuery();
            Response.Redirect("Uye_Tamam.aspx?Email=" + txtEmail.Text);

        }
        else

            lblBilgi.Text = "Bu Mail Sitemizde Kayıtlıdır.";

    }
    }




