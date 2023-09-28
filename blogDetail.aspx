<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="blogDetail.aspx.cs" Inherits="blogDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <div class="elh-main-wrap">

        <!-- Blog Style 3 -->
        <div class="elh-section elh-section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="elh-posts-listing">
                            <article class="elh-post style-4">
                                <a class="elh-post-thumb" href="#">
                                           <figure> <asp:Image ID="image" class="img-responsive" runat="server" style="width:-webkit-fill-available !important;max-height: 500px;"/></figure>
                                        </a>
                                <div class="elh-post-body">
                                    <h4 class="elh-post-title"> <asp:Label ID="lable_title" runat="server"  style="font-size:30px"></asp:Label></h4>
                                    <p class="elh-post-excerpt"> <asp:Label ID="label_description" runat="server"></asp:Label> </p>  
                                </div>
                            </article>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="sidebar">
                            <aside class="widget category_widget">
                                <h4 class="widget-title">Categories</h4>
                                <ul class="categories">
                                    <asp:Repeater runat="server" ID="Repeater1">
                                            <ItemTemplate>
                                    <li><a href="blogpage.aspx"><span><%#Eval("exp1")%></span><span class="text-dusty-gray">(<%#Eval("blog_count")%>)</span></a></li>
                                    </ItemTemplate>
                                        </asp:Repeater>
                                </ul>
                            </aside>
                            <aside class="widget post_widget">
                                <h4 class="widget-title">Popular Blogs</h4>
                                <div class="widget-posts">
                                                                            <asp:Repeater runat="server" ID="Repeater2">
                                            <ItemTemplate>
                                    <div class="widget-post">
                                        <a class="widget-post-thumb" href="blogDetail.aspx?id=<%#Eval("id")%>">
                                            <img class="img-responsive" src="<%#Eval("image")%>" alt="Post Title">
                                        </a>
                                        <div class="widget-post-content">
                                            <a class="widget-post-title" href="blogDetail.aspx?id=<%#Eval("id")%>"><%#Eval("title")%></a>
                                            <a class="widget-read-more" href="blogDetail.aspx?id=<%#Eval("id")%>">Read More<i class="fa fa-long-arrow-right"></i></a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                                </ItemTemplate>
                                        </asp:Repeater>
                                    
                                </div>
                            </aside>
                            <aside class="widget tag-widget">
                                <h4 class="widget-title">TAGs</h4>
                                <div class="tags">
                                    <a href="#">Education</a>
                                    <a href="#">Training</a>
                                    <a href="#">Campus</a>
                                    <a href="#">Web Design</a>
                                    <a href="#">Web Development</a>
                                    <a href="#">Apps</a>
                                    <a href="#">iOS</a>
                                    <a href="#">Environment</a>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog Style 3 End -->


    </div>

</asp:Content>
