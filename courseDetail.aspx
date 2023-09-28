<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="courseDetail.aspx.cs" Inherits="courseDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="elh-main-wrap">

        <!-- Blog Style 3 -->
        <div class="elh-section elh-section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="elh-posts-listing">
                            <article class="elh-post style-4">
                                <a class="elh-post-thumb" href="#" >
                                           <figure> <asp:Image ID="image" class="img-responsive" runat="server" style="width:-webkit-fill-available !important;max-height: 500px;"/></figure>
                                        </a>
                                <div class="elh-post-body">
                                    <h4 class="elh-post-title"> <asp:Label ID="lable_title" runat="server"  style="font-size:30px"></asp:Label></h4>
                                    <p class="elh-post-excerpt"> <asp:Label ID="label_description" runat="server"></asp:Label> </p>  
                                </div>
                            </article>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
        <!-- Blog Style 3 End -->


    </div>

</asp:Content>
