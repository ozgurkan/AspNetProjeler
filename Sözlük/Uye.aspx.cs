using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;using System.Data;using System.Data.SqlClient; 

public partial class Uye1 : System.Web.UI.Page
{Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Uye_Id"] == null)
        {

            Response.Redirect("Default.aspx");
        }
        else
        {

            Panel3.Visible = true;
            DataRow drGiris = klas.GetDataRow("Select * from Uyeler Where Uye_Id=" + Session["Uye_Id"]);
            Label1.Text = drGiris["Ad"].ToString();
        }
    }
}