<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="students.aspx.cs" Inherits="students" %>

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
                                <th>Profile</th>
                                <th>Name</th>
                                <th>Father Name</th>
                                <th>Mother Name</th>
                                <th>Gender</th>
                                <th>Date of Birth</th>
                                <th>Nationality</th>
                                <th>Category</th>
                                <th>City</th>
                                <th>State</th>
                                <th>Course</th>
                                <th>Session</th>  
                                <th>Qualification</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="studentRepeater" runat="server">
                                <ItemTemplate>
                                    <tr>
                                                                                <td>
                                            <img src='../../<%#Eval("profile_image")%>' alt='<%#Eval("name")%>' style="height: 70px; width: auto" /></td>
                                         <td><%#Eval("name")%></td>
                                         <td><%#Eval("father_name")%></td>
                                         <td><%#Eval("mother_name")%></td>
                                         <td><%#Eval("gender")%></td>
                                         <td><%#Eval("date_of_birth")%></td>
                                         <td><%#Eval("nationality")%></td>
                                         <td><%#Eval("category")%></td>
                                         <td><%#Eval("city")%></td>
                                         <td><%#Eval("state_name")%></td>
                                         <td><%#Eval("course_name")%></td>
                                         <td><%#Eval("session_name")%></td>
                                         <td><%#Eval("qualification")%></td>                              
                                         
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
