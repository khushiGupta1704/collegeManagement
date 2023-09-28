<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="ourTeam.aspx.cs" Inherits="ourTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
                <!-- Page header -->
    <div class="elh-page-header elh-img-bg elh-bg-9">
        <div class="elh-overlay" style="padding-top: 35px;padding-bottom: 35px;">
            <div class="container text-center">
                <h3 class="elh-page-title"> Our Team</h3>
                <ol class="breadcrumb">
                    <li><a href="index.aspx">Home</a></li>
                    <li class="active"> Our Team</li>
                </ol>
            </div>
        </div>
    </div>
    <!-- Page header End -->

        <!-- Our instructor -->
        <div class="elh-section elh-section-padding-big elh-bottom-0" style="padding-top:50px !important">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="elh-section-header text-center">
                            <h3 class="elh-section-title">Our <span>Instructors</span></h3>
                            <p class="elh-section-text">Meet Our Team</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="elh-instructors">
                         <asp:Repeater runat="server" ID="TeamRepeater">
                        <ItemTemplate>

                                                  <div class="col-md-4 col-sm-6">
                            <div class="elh-instructor style-2" style="border: 1px solid #eeeeee;padding-top:100px !important">
                                <div class="instructor-cover" sryle="">
                                    <div class="img-responsive"></div>
                                    <a class="elh-instructor-thumb" href="#">
                                        <img class="img-responsive" src="<%#Eval("image")%>" alt="...">
                                    </a>
                                </div>
                                <div class="elh-instructor-body">
                                    <h4 class="elh-instructor-title"><a href="instructor-single.html"><%#Eval("name")%></a></h4>
                                    <p class="elh-instructor-field" style="margin:0px"><%#Eval("course_name")%></p>
                                    <p class="elh-instructor-field"  style="margin:0px">Working as <%#Eval("designation")%></p>
                                    <p class="elh-instructor-field"  style="margin:0px">Having Experience of <%#Eval("working_interval")%></p>
                                    <%--<p class="elh-instructor-excerpt">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et</p>
                                    <a class="elh-instructor-link" href="instructor-single.html">View Profile <i class="fa fa-long-arrow-right"></i></a>--%>
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
        <!-- Our instructor end -->

</asp:Content>