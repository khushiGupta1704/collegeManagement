<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="coursePage.aspx.cs" Inherits="coursePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
                <!-- Page header -->
    <div class="elh-page-header elh-img-bg elh-bg-9">
        <div class="elh-overlay" style="padding-top: 35px;padding-bottom: 35px;">
            <div class="container text-center">
                <h3 class="elh-page-title">Course</h3>
                <ol class="breadcrumb">
                    <li><a href="index.aspx">Home</a></li>
                    <li class="active">Course</li>
                </ol>
            </div>
        </div>
    </div>
    <!-- Page header End -->

    <!-- Main wrapper start -->
    <div class="elh-main-wrap">
        
        <!-- Blog Style 1 -->
        <div class="elh-section elh-section-padding">
            <div class="container">
                <div class="row">
                    <div class="elh-posts-listing">
                         <asp:Repeater runat="server" ID="courseRepeater">
                        <ItemTemplate>
                        <div class="col-md-4 col-xs-6">
                            <article class="elh-post style-3">
                                <a class="elh-post-thumb" href="courseDetail.aspx?id=<%#Eval("id")%>">
                                    <img class="img-responsive" src="<%#Eval("image")%>" alt="<%#Eval("name")%>">
                                </a>
                                <div class="elh-post-body">
                                    <h4 class="elh-post-title"><a href="courseDetail.aspx?id=<%#Eval("id")%>"><%#Eval("name")%></a></h4>
                                    <a class="elh-post-link" href="courseDetail.aspx?id=<%#Eval("id")%>">Read More<i class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </article>
                        </div>
                             </ItemTemplate>
                    </asp:Repeater>
                        <div class="text-center col-xs-12">
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
                              <div class="row" style="text-align: center;margin-top: 20px;">
                        
                    <asp:Label ID="lblStatus" runat="server" style="text-align:center"></asp:Label>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog Style 1 End -->
        

    </div>
    <!-- Main wrapper start end -->
</asp:Content>
