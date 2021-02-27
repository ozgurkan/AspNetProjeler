using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class Uye_Tamam : System.Web.UI.Page
{
   Metodlar klas = new Metodlar();
    string Email = "";
    protected void Page_Load(object sender, EventArgs e)
    {
 int Sayi;
        try
        {
            Email=Request.QueryString["Email"];
        }
        catch (Exception)
        {
        }
        DataRow drsayi = klas.GetDataRow("Select * from Uyeler Where Email='" + Email + "'");
        Sayi = Convert.ToInt32(drsayi["Sayi"].ToString());
        MailMessage msg = new MailMessage();//yeni bir mail nesnesi oluşturuldu.
        msg.IsBodyHtml = true;//Mail içeriğinde html etiketleri kullanılsın mı?
        msg.To.Add(Email);//Kime mail gönderilecek
        msg.From = new MailAddress("galatasaray_ozgur_94@hotmail.com", "E-Sözlük.com", System.Text.Encoding.UTF8);//mail kimden geliyor hangi fade görünsün
        msg.Subject = "Üyelik onay maili";//mailin konusu yazılıyor.
        msg.Body = "<a href='http://localhost:32842/Sözlük/uye_onay.aspx?x=" + Sayi + "&Email=" + Email + "'>Üyelik onayı için tıklayın</a>";//mailin içeriği
        SmtpClient smp = new SmtpClient();
        smp.Credentials = new NetworkCredential("galatasaray_ozgur_94@hotmail.com", "mustafa123");
        smp.Port = 587;
        smp.Host = "smp.hotmail.com";
        smp.EnableSsl = true;
        smp.Send(msg);//msg isimli mail gönderiliyor.
       
    }
}







