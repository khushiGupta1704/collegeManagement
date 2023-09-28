<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="latestNews.aspx.cs" Inherits="latestNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


                <!-- Page header -->
    <div class="elh-page-header elh-img-bg elh-bg-9">
        <div class="elh-overlay" style="padding-top: 35px;padding-bottom: 35px;">
            <div class="container text-center">
                <h3 class="elh-page-title">News</h3>
                <ol class="breadcrumb">
                    <li><a href="index.aspx">Home</a></li>
                    <li class="active">News</li>
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
                    <div class="elh-events">                    
                    
                    
                    
                                                <asp:Repeater runat="server" ID="newsRepeater" OnItemDataBound="newsRepeater_ItemDataBound">
                            <ItemTemplate>
                        <div class="col-md-6">
                            <div class="elh-event">
                                <div class="elh-event-date" >
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
            </div>      

</asp:Content>
