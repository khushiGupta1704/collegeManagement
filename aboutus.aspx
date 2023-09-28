<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <style>
            .elh-info-box {
          padding: 30px 30px !important;
          height: 250px;
      }
      .fa {
  margin-top:10px;
}
      .elh-carousel-section .owl-buttons {
    top: -105px;
}
@media screen and (max-width: 991px){
    .elh-carousel-section .owl-buttons {
    top: 22px;
}
}
@media screen and (max-width:1205px){
    .message_sec{
        width:auto;
        height:auto;
    }
}
.pt-50{
    padding:50px 0px;
}
      .principal-says{
    background-image:url('http://localhost:64318/front-assets/images/class-room-slider.jpg');

}
.principal-says{
    background-position: center center;
    background-size: cover;
    background-attachment: fixed;

}

.principal-says .elh-overlay{
    color: #ffffff;
    background-color: rgb(0 0 0 / 68%);

}
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="ftco-section contact-section" id="contact-section">
      <div class="elh-page-header elh-img-bg elh-bg-9">
        <div class="elh-overlay" style="padding-top: 35px;padding-bottom: 35px;">
            <div class="container text-center">
                <h3 class="elh-page-title">About Us</h3>
                <ol class="breadcrumb">
                    <li><a href="index.aspx">Home</a></li>
                    <li class="active">About Us</li>
                </ol>
            </div>
        </div>
    </div>
        <div class="elh-section pt-50 elh-bottom-0" style="margin-top:45px">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 col-xs-12 text-center">
                        <div class="elh-section-header">
                            <h3 class="elh-section-title">About <span>Us</span></h3>
                            <%--<p class="elh-section-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim</p>--%>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12" style="text-align:center">
                        <asp:Label ID="about_us_detail" runat="server"></asp:Label>
                     </div>
                </div>
            </div>
        </div>
        <div class="elh-section elh-carousel-section elh-img-bg principal-says">
            <div class="elh-overlay pt-50">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 text-center" >
                            <div class="elh-section-header" style="margin-top: 45px">
                                <h3 class="elh-section-title">Vision & <span>Mission</span></h3>
                                <div class="row" style="margin-top:20px">
 <div class="col-md-12" style="text-align:center">
                        <asp:Label ID="vision_message" runat="server"></asp:Label>
                     </div>                                    
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     

         <div class="elh-section pt-50 elh-carousel-section" style="padding:30px">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="elh-section-header text-left">
                            <h3 class="elh-section-title">Our <span>Student Says</span></h3>
                            <p class="elh-section-text"></p>
                            <a class="all-link" href="testimonial.aspx">See All Comments</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="elh-generic-carousel owl-carousel">
                         <asp:Repeater runat="server" ID="messageRepeater">
                            <ItemTemplate>
                       <div class="elh-course style-2">
                            <div class="elh-course-content">
                               <h4 class="elh-instructor-title"><%#Eval("name")%></h4>
                               <p class="elh-instructor-excerpt" style="color: black !important"><%#Eval("comment")%></p>
                            </div>
                        </div>
                          </ItemTemplate>
                                </asp:Repeater> 
                    </div>
                    
                </div>
            </div>
        </div>
         
        </section>
</asp:Content>
