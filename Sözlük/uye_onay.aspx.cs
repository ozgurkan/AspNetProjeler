using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 

public partial class uye_onay : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    string x = ""; string Email = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            x = Request.QueryString["x"];
            Email = Request.QueryString["Email"];
        }
        catch (Exception)
        {
        }
        DataRow drSayi = klas.GetDataRow("Select Sayi from Uyeler Where Email='" + Email + "'");
        if (x == drSayi["Sayi"].ToString())
        {
            klas.cmd("Update  Uyeler set Onay=1 where Email='" + Email + "'");
        }
    }
}



