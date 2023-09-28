<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="studentStudyMaterial.aspx.cs" Inherits="studentStudyMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Page header -->
    <div class="elh-page-header elh-img-bg elh-bg-9">
        <div class="elh-overlay" style="padding-top: 35px; padding-bottom: 35px;">
            <div class="container text-center">
                <h3 class="elh-page-title">Student Corner</h3>
                <ol class="breadcrumb">
                    <li><a href="index.aspx">Home</a></li>
                    <li class="active">Student Corner</li>
                </ol>
            </div>
        </div>
    </div>
    <!-- Page header End -->


    <!-- Contact Form -->
    <div class="elh-section elh-section-padding" style="padding: 31px 0;">
        <div class="container">

            <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th style="width:80%">Title</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="studentRepeater" runat="server">
                                <ItemTemplate>
                                    <tr>
                                         <td style="width:80%"><%#Eval("title")%></td>                                         
                                         <td><a href="<%#Eval("pdf_file")%>" target="_blank" class="btn">Download</i></td> 
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
        </div>
    </div>
    <!-- Contact Form End -->

</asp:Content>
