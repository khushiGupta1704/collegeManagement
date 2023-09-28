<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="testimonials.aspx.cs" Inherits="testimonials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
     <section class="ftco-section contact-section" id="contact-section">

                         <!-- Page header -->
    <div class="elh-page-header elh-img-bg elh-bg-9">
        <div class="elh-overlay" style="padding-top: 35px;padding-bottom: 35px;">
            <div class="container text-center">
                <h3 class="elh-page-title">Testimonials</h3>
                <ol class="breadcrumb">
                    <li><a href="index.aspx">Home</a></li>
                    <li class="active">Testimonials</li>
                </ol>
            </div>
        </div>
    </div>
    <!-- Page header End -->
         <div class="container">
<div class="row d-flex" style="padding:20px 0px">

   <asp:Repeater runat="server" ID="TestimonialRepeater">
   <ItemTemplate>
<div class="col-md-4 ftco-animate" style="padding-top:15px">
   <div style="background-color: #e8eaf13b;border-radius: 0px 0px 20px 0px;padding:10px">
<div class="staff">
<div class="text pt-3 text-center" style="background-color:inherit">
<%--<h3 class="mb-2"><a href="http://aastha.omtechnoware.com/DepartmentDetail/<%#Eval("id")%>"><%#Eval("title")%></a></h3>--%>
    <p><%#Eval("comment")%></p>
    <h5 class="mb-2"><%#Eval("name")%></h5>
    <p><%#Eval("profession")%></p>
<div class="faded">
</div>
</div>
</div>
</div>
    </div>
   </ItemTemplate>
</asp:Repeater>
</div>
    <div class="row" style="text-align: center;margin-top: 20px;">                       
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
<div class="row" style="text-align: center;margin: 20px; 0px">                        
<asp:Label ID="lblStatus" runat="server" style="text-align:center"></asp:Label>
</div>
    </div>
</section>
</asp:Content>
