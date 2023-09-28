<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="/front-assets/assets/css/themify-icons.css">
    <link rel="stylesheet" href="/front-assets/assets/css/plyr.css">
    <link rel="stylesheet" href="/front-assets/assets/css/magnific-popup.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Main wrapper start -->
          <div class="elh-page-header elh-img-bg elh-bg-9">
        <div class="elh-overlay" style="padding-top: 35px;padding-bottom: 35px;">
            <div class="container text-center">
                <h3 class="elh-page-title">FAQs</h3>
                <ol class="breadcrumb">
                    <li><a href="index.aspx">Home</a></li>
                    <li class="active">FAQs</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="elh-main-wrap">
        <div class="elh-section elh-section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="elh-section-header text-center">
                            <h3 class="elh-section-title">Frequently Asked Questions</h3>
                            <p class="elh-section-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                   
                    <div class="col-sm-12 sm-bottom-30">
                        <div class="faq-group">
                            <div class="panel-group style-2" id="ocAccordion" role="tablist" aria-multiselectable="true">
                                 <asp:Repeater runat="server" ID="FaqRepeater">
                    <ItemTemplate >
                                <div class="panel">
                                    <div class="panel-heading" role="tab" id="faq_header_<%#Eval("id")%>">
                                        <h4 class="panel-title">
                                            <a role="button" data-toggle="collapse" data-parent="#ocAccordion" href="#faq_<%#Eval("id")%>" aria-expanded="true" aria-controls="faq_<%#Eval("id")%>">
                                         <%#Eval("question")%>
                                        </a>
                                        </h4>
                                    </div>
                                    <div id="faq_<%#Eval("id")%>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="faq_header_<%#Eval("id")%>" style="margin-bottom:30px">
                                        <div class="panel-body">
                                           <%#Eval("answer")%>
                                        </div>
                                    </div>
                                </div>
                        </ItemTemplate>
                        </asp:Repeater>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
         <div class="row" style="text-align: center;margin-top: 20px;">
                       
                            <asp:Button ID="lbtnFirst" runat="server"  class="btn btn-primary" Text="First" OnClick="lbtnFirst_Click"
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
                    <div class="row" style="text-align: center;margin-top: 20px;">
                        
                    <asp:Label ID="lblStatus" runat="server" style="text-align:center"></asp:Label>
                        </div>
    </div>
    <!-- Main wrapper start end -->

    
   
</asp:Content>
