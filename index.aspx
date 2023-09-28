<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="http://aastha.omtechnoware.com/front-assets/css/owl.carousel.min.css">
     <link rel="stylesheet" href="http://localhost:64318/front-assets/assets/css/plyr.css">
    <link rel="stylesheet" href="http://localhost:64318/front-assets/assets/css/magnific-popup.css">
  <style>
      .carousel {
    position: relative
}

.carousel-inner {
    position: relative;
    width: 100%;
    overflow: hidden
}

    .carousel-inner::after {
        display: block;
        clear: both;
        content: ""
    }

.carousel-item {
    position: relative;
    display:none;
    float: left;
    width: 100%;
    margin-right: -100%;
    -webkit-backface-visibility: hidden;
    backface-visibility: hidden;
    transition: -webkit-transform .6s ease-in-out;
    transition: transform .6s ease-in-out;
    transition: transform .6s ease-in-out, -webkit-transform .6s ease-in-out
}

@media (prefers-reduced-motion:reduce) {
    .carousel-item {
        transition: none
    }
}

.carousel-item-next,
.carousel-item-prev,
.carousel-item .active {
    display: block
}

    .active.carousel-item-right,
    .carousel-item-next:not(.carousel-item-left) {
        -webkit-transform: translateX(100%);
        transform: translateX(100%)
    }

    .active.carousel-item-left,
    .carousel-item-prev:not(.carousel-item-right) {
        -webkit-transform: translateX(-100%);
        transform: translateX(-100%)
    }

.carousel-fade .carousel-item {
    opacity: 0;
    transition-property: opacity;
    -webkit-transform: none;
    transform: none
}

    .carousel-fade .carousel-item-next.carousel-item-left,
    .carousel-fade .carousel-item-prev.carousel-item-right,
    .carousel-fade .carousel-item.active {
        z-index: 1;
        opacity: 1
    }

.carousel-fade .active.carousel-item-left,
.carousel-fade .active.carousel-item-right {
    z-index: 0;
    opacity: 0;
    transition: opacity 0s .6s
}

@media (prefers-reduced-motion:reduce) {

    .carousel-fade .active.carousel-item-left,
    .carousel-fade .active.carousel-item-right {
        transition: none
    }
}

.carousel-control-next,
.carousel-control-prev {
    position: absolute;
    top: 0;
    bottom: 0;
    z-index: 1;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-align: center;
    align-items: center;
    -ms-flex-pack: center;
    justify-content: center;
    width: 15%;
    padding: 0;
    color: #fff;
    text-align: center;
    background: 0 0;
    border: 0;
    opacity: .5;
    transition: opacity .5s ease
}

@media (prefers-reduced-motion:reduce) {

    .carousel-control-next,
    .carousel-control-prev {
        transition: none
    }
}

.carousel-control-next:focus,
.carousel-control-next:hover,
.carousel-control-prev:focus,
.carousel-control-prev:hover {
    color: #fff;
    text-decoration: none;
    outline: 0;
    opacity: .9
}

.carousel-control-prev {
    left: 0
}

.carousel-control-next {
    right: 0
}

.carousel-control-next-icon,
.carousel-control-prev-icon {
    display: inline-block;
    width: 20px;
    height: 20px;
    background: 50%/100% 100% no-repeat
}

.carousel-control-prev-icon {
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' width='8' height='8' viewBox='0 0 8 8'%3e%3cpath d='M5.25 0l-4 4 4 4 1.5-1.5L4.25 4l2.5-2.5L5.25 0z'/%3e%3c/svg%3e")
}

.carousel-control-next-icon {
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' width='8' height='8' viewBox='0 0 8 8'%3e%3cpath d='M2.75 0l-1.5 1.5L3.75 4l-2.5 2.5L2.75 8l4-4-4-4z'/%3e%3c/svg%3e")
}

.carousel-indicators {
    position: absolute;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 15;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-pack: center;
    justify-content: center;
    padding-left: 0;
    margin-right: 15%;
    margin-left: 15%;
    list-style: none
}

    .carousel-indicators li {
        box-sizing: content-box;
        -ms-flex: 0 1 auto;
        flex: 0 1 auto;
        width: 30px;
        height: 3px;
        margin-right: 3px;
        margin-left: 3px;
        text-indent: -999px;
        cursor: pointer;
        background-color: #fff;
        background-clip: padding-box;
        border-top: 10px solid transparent;
        border-bottom: 10px solid transparent;
        opacity: .5;
        transition: opacity .6s ease
    }

@media (prefers-reduced-motion:reduce) {
    .carousel-indicators li {
        transition: none
    }
}

.carousel-indicators .active {
    opacity: 1
}

.carousel-caption {
    position: absolute;
    right: 15%;
    bottom: 20px;
    left: 15%;
    z-index: 10;
    padding-top: 20px;
    padding-bottom: 20px;
    color: #fff;
    text-align: center
}

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
@media screen and ( max-width:500px){   
    .pt-50{
    padding:200px 0px;
}
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
.col-md-4{
    width:25%
}
.col-md-8{
    width:75%
}
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


              <section class="ftco-section testimony-section img" style="background-color:white">

<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <%--<ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>--%>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
         
           <asp:Repeater runat="server" ID="SliderRepeater">
        <ItemTemplate>
            <%--<asp:Label ID="" runat="server" Text="<%# Container.ItemIndex + 1 %>" Visible="false"></asp:Label>--%>
           <div id="repeater_index" style="display:none"><%# Container.ItemIndex + 1 %></div>
    <div class="carousel-item" id="<%# Container.ItemIndex + 1 %>">
      <img src='<%#Eval("image")%>' alt="Los Angeles" height="500" style="width: 100%;">
    </div>
         </ItemTemplate>
        </asp:Repeater> 
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
      
</div> 
</section>
     
    <!-- Main wrapper start -->
    <div class="elh-main-wrap">
        <!-- Info box -->
        <div class="elh-section"  style="padding:50px !important;background-color: #f5e9e1;">
            <div class="container">
                <div class="row">
                    <div class="elh-info-boxes">
                        <div class="col-sm-3">
                            <div class="elh-info-box" style="border: 1px solid #ff6800;">
                                <div class="elh-infobox-icon">
                                    <img src="http://localhost:64318/front-assets/images/icons/book.png" alt="...">
                                </div>
                                <h4 class="infobox-title">ADMISSION 2021-22</h4>
                                <p class="infobox-text">(Admissions are open for various programs)</p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="elh-info-box" style="border: 1px solid #ff6800;">
                                <div class="elh-infobox-icon">
                                    <img src="http://localhost:64318/front-assets/images/icons/graduation-cap.png" alt="...">
                                </div>
                                <h4 class="infobox-title">Scholarships Scheme</h4>
                                <p class="infobox-text">(SC/ST welfare schemes & Needy General/OBC Students)</p>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="elh-info-box" style="border: 1px solid #ff6800;">
                                <div class="elh-infobox-icon">
                                    <img src="http://localhost:64318/front-assets/images/icons/certificate.png" alt="...">
                                </div>
                                <h4 class="infobox-title">Infrastructure</h4>
                                <p class="infobox-text">Campus situated in a peaceful & pollution free environment.</p>
                            </div>
                        </div>
                         <div class="col-sm-3">
                            <div class="elh-info-box" style="border: 1px solid #ff6800;">
                                <div class="elh-infobox-icon">
                                    <img src="http://localhost:64318/front-assets/images/icons/book.png" alt="...">
                                </div>
                                <h4 class="infobox-title">Learning</h4>
                                <p class="infobox-text">We are scrambling to adopt innovative new education environments.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Info box end -->

       <hr style="border-top:8px solid #ff6800;margin-top: 0px"/>

        <!-- Popular Courses -->
        <div class="elh-section pt-50 elh-carousel-section" style="padding:30px">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="elh-section-header text-left">
                            <h3 class="elh-section-title">Popular <span>Courses</span></h3>
                            <p class="elh-section-text"></p>
                            <a class="all-link" href="coursePage.aspx">See All Courses</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="elh-generic-carousel owl-carousel">
                         <asp:Repeater runat="server" ID="courseRepeater">
                            <ItemTemplate>
                       <div class="elh-course style-2">
                            <a class="elh-course-thumb" href="courseDetail.aspx?id=<%#Eval("id")%>">
                                <img class="img-responsive" src="<%#Eval("image")%>" alt="...">
                            </a>
                            <div class="elh-course-content">
                                <h4 class="elh-course-title"><a href="courseDetail.aspx?id=<%#Eval("id")%>"><%#Eval("name")%></a></h4>
                                <p style="color:black"><%#Eval("meta_description")%></p>
                            </div>
                        </div>
                          </ItemTemplate>
                                </asp:Repeater> 
                    </div>
                    
                </div>
                                      <div class="text-center col-xs-12">
                              <a class="btn btn-primary" href="coursePage.aspx">View All</a>

                        </div>
            </div>
        </div>
        <!-- Popular Courses End -->
        <div class="elh-section elh-carousel-section elh-img-bg principal-says">
            <div class="elh-overlay pt-50">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="elh-section-header text-left">
                                <h3 class="elh-section-title">Our <span>Principal Says</span></h3>
                                
                                <div class="row">
                                    <div class="col-sm-4" style="float:left;">
                                        
                                    </div>
                                    <div class="col-sm-8">
                                        <h4><asp:Label id="Label1" runat="server"></asp:Label></h4>
                                        
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-4" style="float:left;margin-top:50px">
                                        <asp:HyperLink id="principle_image" runat="server" style="max-width:300px;max-height:400px"/>
                                    </div>
                                    <div class="col-sm-8 message_sec" >
                                        <h4><asp:Label id="principle_name" runat="server"></asp:Label></h4>
                                        <p class="elh-section-text"><asp:Label id="principle_says" runat="server"></asp:Label></p>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <!-- Upcoming Event -->
        <div class="elh-section pt-50 elh-bottom-0">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 col-xs-12 text-center">
                        <div class="elh-section-header">
                            <h3 class="elh-section-title">Latest <span>News</span></h3>
                            <%--<p class="elh-section-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim</p>--%>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="elh-events">
                        <asp:Repeater runat="server" ID="newsRepeater" OnItemDataBound="newsRepeater_ItemDataBound">
                            <ItemTemplate>
                        <div class="col-md-6">
                            <div class="elh-event">
                                <div class="elh-event-date">
                                    <asp:Label ID="news_date" runat="server" visible="false" Text='<%#Eval("news_date")%>'></asp:Label>
                                    <span class="elh-event-day"><asp:Label ID="update_date" runat="server"></asp:Label></span>
                                    <span class="elh-event-month"><asp:Label ID="update_month" runat="server"></asp:Label></span>
                                </div>
                                <div class="elh-event-detail">
                                    <h4 class="elh-event-title"><a href="newsDetail.aspx?id=<%#Eval("id")%>"><%#Eval("title")%></a></h4>
                                    <%--<p class="elh-event-metas">
                                        <span><i class="fa fa-clock-o"></i>9am - 2pm</span>
                                        <span><i class="fa fa-map-marker"></i>Victoria Campus</span>
                                    </p>--%>
                                    <p class="elh-event-excerpt"><%#Eval("meta_description")%></p>
                                </div>
                            </div>
                        </div>
                                </ItemTemplate>
                        </asp:Repeater>
                       
                    </div>
                </div>
                <div class="text-center col-xs-12"  style="padding-top:30px">
                              <a class="btn btn-primary" href="blogPage.aspx">View All</a>

                        </div>
            </div>
        </div>
        <!-- Upcoming Event End -->
        <!-- Our instructor -->
        <div class="elh-section elh-carousel-section elh-img-bg elh-bg-2">
            <div class="elh-overlay pt-50">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="elh-section-header text-left">
                                <h3 class="elh-section-title">Our <span>Student</span> Says</h3>
                                <%--<p class="elh-section-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim</p>--%>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="elh-generic-carousel owl-carousel">
                            <asp:Repeater runat="server" ID="testimonialRepeater">
                            <ItemTemplate>
                            <div class="elh-instructor">
                                <%--<a class="elh-instructor-thumb" href="instructor-single.html">
                                    <img class="img-responsive" src="<%#Eval("image")%>" style="height:300px !important">
                                </a>--%>
                                <div class="elh-instructor-body">
                                    <h4 class="elh-instructor-title"><%#Eval("name")%></h4>
                                    <p class="elh-instructor-field"><%#Eval("profession")%></p>
                                    <p class="elh-instructor-excerpt" style="color: black !important"><%#Eval("comment")%></p>
<%--                                    <a class="elh-instructor-link" href="instructor-single.html">View Profile <i class="fa fa-long-arrow-right"></i></a>--%>
                                </div>
                            </div>
                                </ItemTemplate>
                                </asp:Repeater>
                        </div>
                    </div>
                    <div class="text-center col-xs-12"  style="padding-top:30px">
                              <a class="btn btn-primary" href="testimonials.aspx">View All</a>

                        </div>
                </div>
            </div>
        </div>
        <!-- Our instructor -->
        <!-- Partner Logoes -->
        <!-- Carouseled Gallery -->
        <div class="elh-section pt-50">
            <div class="container">
                                    <div class="row">
                    <div class="col-xs-12">
                        <div class="elh-section-header text-center">
                            <h3 class="elh-section-title">College <span>Gallery</span></h3>
                            <p class="elh-section-text"></p>
                            <a class="all-link" href="gallery.aspx">See All Images</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="elh-carouseled-gallery elh-gallery owl-carousel" id="elh-gallery-carousel">
   
                                         <asp:Repeater runat="server" ID="galleryRepeater">
                            <ItemTemplate>
                <a class="elh-gallery-item" href='<%#Eval("image")%>'>
                    <img class="img-responsive" src='<%#Eval("image")%>' alt="..." style="width:auto;height: 200px;margin-right: auto;margin-left: auto;">
                    <i class="fa fa-search"></i>
                </a>
                                </ItemTemplate>
                                         </asp:Repeater>
               
            </div>
        </div>
        <!-- Carouseled Gallery End -->
               <!-- Partner Logoes End -->
       <!-- News & blog -->
        <div class="elh-section elh-img-bg elh-carousel-section" style="background-image:url('');">
            <div class="elh-overlay" style="padding-bottom:50px">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="elh-section-header text-left">
                                <h3 class="elh-section-title" style="color:black">News &amp; <span>Blog</span></h3>
                               <%-- <p class="elh-section-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim</p>--%>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="elh-generic-carousel owl-carousel">
                            
                            <asp:Repeater runat="server" ID="blogRepeater">
                            <ItemTemplate>
                            <article class="elh-post">
                                <a class="elh-post-thumb" href="blogDetail.aspx?id=<%#Eval("id")%>">
                                    <img class="img-responsive" src='<%#Eval("image")%>' alt="...">
                                </a>
                                <div class="elh-post-body">
                                    <h4 class="elh-post-title"><a href="blogDetail.aspx?id=<%#Eval("id")%>"><%#Eval("title")%></a></h4>
                                    <a class="elh-post-link" href="blogDetail.aspx?id=<%#Eval("id")%>">Read More<i class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </article>
                                </ItemTemplate>

                            </asp:Repeater>

                        </div>
                    </div>
                    <div class="text-center col-xs-12" style="padding-top:30px">
                              <a class="btn btn-primary" href="latestNews.aspx">View All</a>

                        </div>
                </div>
            </div>
        </div>
        <!-- News & blog end -->

        

        

    </div>
    <!-- Main wrapper start end -->
  <script src="http://localhost:64318/front-assets/js/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
     <script>
         $(document).ready(function () {
             var val1 = $("#repeater_index").html();
             if (val1 == '1') {
                 $("#1").addClass("active");
             }
         });
     </script>
</asp:Content>
