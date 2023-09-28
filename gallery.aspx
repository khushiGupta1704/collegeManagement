<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link rel="stylesheet" href="http://localhost:64318/front-assets/assets/css/plyr.css">
    <link rel="stylesheet" href="http://localhost:64318/front-assets/assets/css/magnific-popup.css">
    <style>
        .fa{
            padding:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="ftco-section contact-section" id="contact-section">
      <div class="elh-page-header elh-img-bg elh-bg-9">
        <div class="elh-overlay" style="padding-top: 35px;padding-bottom: 35px;">
            <div class="container text-center">
                <h3 class="elh-page-title">Image Gallery</h3>
                <ol class="breadcrumb">
                    <li><a href="index.aspx">Home</a></li>
                    <li class="active">Image Gallery</li>
                </ol>
            </div>
        </div>
    </div>
       <!-- Main wrapper start -->
    <div class="elh-main-wrap">
        
        <!-- Gallery -->
        <div class="elh-section elh-section-padding elh-grid-section elh-gallery-section">
            <div class="container">
                <div class="row">
                    <div class="elh-courses-isotope elh-grid elh-gallery">

                         <asp:Repeater runat="server" ID="Repeater1">
                            <ItemTemplate>
                        <div class="col-sm-4 col-xs-6 elh-grid-item campus-photo certification-photo">
                            <div class="elh-gallery-item style-2" style="background-color: #a7a5a5;
">
                                <img class="gallery-thumb img-responsive" src='<%#Eval("image")%>' alt="..." style="width: auto;height: 200px;margin-right: auto;margin-left: auto;">
                                <div class="gallery-hover">
                                    <div class="gallery-buttons">
                                        <a class="gallery-big" href='<%#Eval("image")%>'><i class="fa fa-search-plus"></i></a>
                                        <%--<a class="gallery-link" href='<%#Eval("name")%>'><i class="fa fa-external-link"></i></a>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                                </ItemTemplate>
                             </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
        <!-- Gallery End -->


    </div>
    <!-- Main wrapper start end -->
                          <div class="row" style="text-align: center;">
                       
                            <asp:Button ID="lbtnFirst" runat="server"
                                class="btn btn-primary" Text="First" OnClick="lbtnFirst_Click"
                               style="min-width: 0px;padding: 0px 12px"></asp:Button>
                            <asp:Button ID="lbtnPrev" runat="server"
                                class="btn btn-primary" Text="Prev"
                                OnClick="lbtnPrev_Click" style="margin-top: 0px;min-width: 0px;padding: 0px 12px"></asp:Button>
                            <asp:Button ID="lbtnNext" runat="server"
                                class="btn btn-primary" Text="Next"
                                OnClick="lbtnNext_Click" style="margin-top: 0px;min-width: 0px;padding: 0px 12px"></asp:Button>
                            <asp:Button ID="lbtnLast" runat="server"
                                class="btn btn-primary" Text="Last"
                                OnClick="lbtnLast_Click" style="margin-top: 0px;min-width: 0px;padding: 0px 12px"></asp:Button>
                    </div>
                    <div class="row" style="text-align: center;margin-top: 20px;margin-bottom: 20px;">
                        
                    <asp:Label ID="lblStatus" runat="server" style="text-align:center"></asp:Label>
                        </div>
        </section>

</asp:Content>
