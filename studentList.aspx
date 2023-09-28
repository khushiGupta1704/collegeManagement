<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="studentList.aspx.cs" Inherits="studentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Page header -->
    <div class="elh-page-header elh-img-bg elh-bg-9">
        <div class="elh-overlay" style="padding-top: 35px; padding-bottom: 35px;">
            <div class="container text-center">
                <h3 class="elh-page-title">Student List</h3>
                <ol class="breadcrumb">
                    <li><a href="index.aspx">Home</a></li>
                    <li class="active">Student List</li>
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
                                <th style="width:30%">Session</th>
                                <th style="width:50%">Course</th>
                                <th style="width:20%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="studentRepeater" runat="server">
                                <ItemTemplate>
                                    <tr>
                                      <%--<td>
                                            <img src='../../<%#Eval("profile_image")%>' alt='<%#Eval("name")%>' style="height: 70px; width: auto" /></td>--%>
                                        
                                         <td style="width:30%"><%#Eval("year")%></td>
                                         <td style="width:50%"><%#Eval("Expr1")%></td>                                     
                                        <td style="width:20%"><a href="students.aspx?session_id=<%#Eval("session_id")%>&course_id=<%#Eval("course_id")%>" class="btn"> view </i></a> 
                                        </td>
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
