<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="topperList.aspx.cs" Inherits="topperList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Page header -->
    <div class="elh-page-header elh-img-bg elh-bg-9">
        <div class="elh-overlay" style="padding-top: 35px; padding-bottom: 35px;">
            <div class="container text-center">
                <h3 class="elh-page-title">Topper List</h3>
                <ol class="breadcrumb">
                    <li><a href="index.aspx">Home</a></li>
                    <li class="active">Topper List</li>
                </ol>
            </div>
        </div>
    </div>
    <!-- Page header End -->


    <!-- Contact Form -->
    <div class="elh-section elh-section-padding" style="padding: 31px 0;">
        <div class="container">
            <asp:Repeater runat="server" ID="sessionRepeater" OnItemDataBound="sessionRepeater_ItemDataBound">
                <ItemTemplate>
                    <div style="padding:20px !important;background-color: #f5e9e1;">
                        <h4>Session <%#Eval("year")%></h4><span><h5><%#Eval("Expr1")%></h5></span>
                    </div>
                    <hr style="border-top:8px solid #ff6800;margin-top: 0px"/>
                    <asp:Label ID="session_id" runat="server" Visible="false" Text='<%#Eval("session_id")%>'></asp:Label>                     <asp:Label ID="course_id" runat="server" Visible="false" Text='<%#Eval("course_id")%>'></asp:Label>
                    <div class="row" style="margin: 50px">
                            <asp:Repeater runat="server" ID="topperRepeater">
                                <ItemTemplate>
                                    
                                        <div class="col-md-4">                                            
                                            <div class="elh-instructor style-3">
                                                <div class="elh-instructor-body" style="margin:10px">
                                            <h4 class="elh-instructor-title">Position:<%#Eval("stu_position")%></h4>
                                             </div>
                                                <div class="elh-instructor-thumb">
                                                    <img class="img-responsive" src="<%#Eval("image")%>" alt="...">
                                                </div>
                                                <div class="elh-instructor-body">
                                                    <h4 class="elh-instructor-title"><%#Eval("name")%></h4>
                                                    <p class="elh-instructor-field"><%#Eval("father_name")%></p>
                                                    <p class="elh-instructor-field">percentage:<%#Eval("stu_percentage")%></p>
                                                </div>
                                            </div>
                                        </div>
                                   
                                </ItemTemplate>
                            </asp:Repeater>
                         </div>
                        </ItemTemplate>
                    </asp:Repeater>
                
        </div>
    </div>
    <!-- Contact Form End -->

</asp:Content>
