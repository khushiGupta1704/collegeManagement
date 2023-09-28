<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="directorMessage.aspx.cs" Inherits="directorMessage" %>

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
                <h3 class="elh-page-title">Director Messsage</h3>
                <ol class="breadcrumb">
                    <li><a href="index.aspx">Home</a></li>
                    <li class="active">Director Messsage</li>
                </ol>
            </div>
        </div>
    </div>
       
     <div class="elh-section pt-50 elh-carousel-section" style="padding:30px">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="elh-section-header text-left" style="margin-bottom: 0px;style="margin-top: 0px"">
                            <h3 class="elh-section-title">Our  <span>Director Says</span></h3>
                         </div>
                    </div>
                </div>
                             <div class="row">
                                    <div class="col-sm-4" style="float:left;">
                                        
                                    </div>
                                    <div class="col-sm-8">
                                        <h4><asp:Label id="Label1" runat="server"></asp:Label></h4>
                                        
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-4" style="float:left;margin-top:50px">
                                        <asp:HyperLink id="principle_image" runat="server" style="width:300px;height:400px"/>
                                    </div>
                                    <div class="col-sm-8 message_sec" >
                                        <h4><asp:Label id="principle_name" runat="server"></asp:Label></h4>
                                        <p class="elh-section-text"><asp:Label id="principle_says" runat="server"></asp:Label></p>
                                    </div>
                                </div>
            </div>
        </div>
         <!-- Our instructor -->
        <div class="elh-section elh-carousel-section elh-img-bg elh-bg-2">
            <div class="elh-overlay pt-50">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="elh-section-header text-left">
                                <h3 class="elh-section-title">Our <span>Teacher</span> Says</h3>
                                <%--<p class="elh-section-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim</p>--%>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="elh-generic-carousel owl-carousel">
                            <asp:Repeater runat="server" ID="messageRepeater">
                            <ItemTemplate>
                            <div class="elh-instructor">
                                <%--<a class="elh-instructor-thumb" href="instructor-single.html">
                                    <img class="img-responsive" src="<%#Eval("image")%>" style="height:300px !important">
                                </a>--%>
                                <div class="elh-instructor-body">
                                     <h4 class="elh-instructor-title"><%#Eval("name")%></h4>
                                    <p class="elh-instructor-excerpt" style="color: black !important"><%#Eval("message")%></p>
                                   
<%--                                    <a class="elh-instructor-link" href="instructor-single.html">View Profile <i class="fa fa-long-arrow-right"></i></a>--%>
                                </div>
                            </div>
                                </ItemTemplate>
                                </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Our instructor -->
        </section>
</asp:Content>
