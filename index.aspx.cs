using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Drawing;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        showPopupData();
        if (!IsPostBack)
        {
            SliderRepeater.DataSource = verma.Show_Data("select TOP(5) * from sliders where status=1 and page_name='Home' order by position");
            SliderRepeater.DataBind();
            courseRepeater.DataSource = verma.Show_Data("select * from courses where status=1 order by position");
            courseRepeater.DataBind();
            newsRepeater.DataSource = verma.Show_Data("select TOP(4) * from news_updates where status=1 order by news_date");
            newsRepeater.DataBind();
            testimonialRepeater.DataSource = verma.Show_Data("select * from testimonials where status=1 order by position");
            testimonialRepeater.DataBind();
            blogRepeater.DataSource = verma.Show_Data("select * from blogs where status=1 order by position");
            blogRepeater.DataBind();
            DataTable dt = new DataTable();
            dt = verma.Show_Data("Select * from messages where designation='Principal'");
            if (dt.Rows.Count > 0)
            {
                principle_says.Text = dt.Rows[0]["message"].ToString();
                principle_name.Text = dt.Rows[0]["name"].ToString();
                principle_image.ImageUrl = dt.Rows[0]["image"].ToString();
            }
            galleryRepeater.DataSource = verma.Show_Data("select * from image_gallery where status=1 order by position");
            galleryRepeater.DataBind();
            //JobRepeater.DataSource = verma.Show_Data("select TOP(3) * from jobs where status=1 order by position");
            //JobRepeater.DataBind();
            //DepartmentRepeater.DataSource = verma.Show_Data("select TOP(6) * from departments where status=1 order by position");
            //DepartmentRepeater.DataBind();
            //DataTable dt = new DataTable();
            //dt = verma.Show_Data("SELECT TOP 1 * FROM offers order by position asc");
            //if (dt.Rows.Count > 0)
            //{
            //    ModalTitle.Text = "<a href='" + dt.Rows[0]["url"].ToString() + "'>"+ dt.Rows[0]["title"].ToString() + "</a>"; 
            //    Offer_image.ImageUrl = dt.Rows[0]["image"].ToString();
            //    Offer_image.NavigateUrl = dt.Rows[0]["url"].ToString();
            //    ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup();", true);
            //}
        }
    }
    protected void hide_popUp_Click(object sender, EventArgs e)
    {
       // ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup();", false);
    }

    private void showPopupData()
    {
        //rptrSlider.DataSource = verma.Show_Data("select * from TB_SliderImages");
        //rptrSlider.DataBind();
        //DataTable dtPopup = new DataTable();
        //dtPopup = verma.Show_Data("select top 1 * from TB_PopupImg order by id desc");
        //if (dtPopup.Rows.Count > 0)
        //{
        //    string str = "";
        //    str += "<div class='modal fade' id='myModal' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' aria-hidden='true'>";
        //    str += "<div class='modal-dialog'>";
        //    str += "<div class='modal-content'>";
        //    str += "<div class='modal-header'>";
        //    str += "<button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>";
        //    str += "<h4 class='modal-title' id='myModalLabel'>" + dtPopup.Rows[0]["title"].ToString() + "</h4>";
        //    str += "</div>";
        //    str += "<div class='modal-body'>";
        //    str += "<img  src=" + dtPopup.Rows[0]["imgUrl"].ToString() + " class='img-responsive' />";
        //    str += "</div>";
        //    str += "<div class='modal-footer'>";
        //    str += "<button type='button' class='btn btn-default' data-dismiss='modal'>Close</button>";
        //    str += "</div>";
        //    str += "</div>";
        //    str += "</div>";
        //    str += "</div>";
        //    popupModal.InnerHtml = str;
        //}
        //else
        //{
        //    string str = "";
        //    str += "<div style='Display:None;'>";
        //    str += "</div>";
        //    popupModal.InnerHtml = str;
        //}
    }
    protected void delete_button_Click(object sender, EventArgs e)
    {

    }

    protected void newsRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

               string label = ((Label)e.Item.FindControl("news_date")).Text;
                string[] s2 = label.Split('/');
                ((Label)e.Item.FindControl("update_date")).Text=s2[0];
            string strMonth = new DateTime(1900, int.Parse(s2[1]), 01).ToString("MMMM");
        ((Label)e.Item.FindControl("update_month")).Text = strMonth;
        

    }
}