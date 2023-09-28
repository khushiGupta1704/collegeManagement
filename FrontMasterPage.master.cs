using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Routing;
using System.Data.SqlClient;


public partial class FrontMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            pdfRepeater.DataSource = verma.Show_Data("SELECT * from pdf_notifications where status=1");
            pdfRepeater.DataBind();
        }
        
    }

    protected void logout_button_Click(object sender, EventArgs e)
    {
        
    }
}
