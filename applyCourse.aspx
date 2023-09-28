<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="applyCourse.aspx.cs" Inherits="applyCourse" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <!-- Page header -->
    <div class="elh-page-header elh-img-bg elh-bg-9">
        <div class="elh-overlay" style="padding-top: 35px; padding-bottom: 35px;">
            <div class="container text-center">
                <h3 class="elh-page-title">Apply Course</h3>
                <ol class="breadcrumb">
                    <li><a href="index.aspx">Home</a></li>
                    <li class="active">Apply Course</li>
                </ol>
            </div>
        </div>
    </div>
    <!-- Page header End -->

    <!-- Contact Form -->
    <div class="elh-section elh-section-padding" style="padding: 31px 0;">
        <div class="container">

            <div class="row">
                <div class="">
                    <div class="quick-contact" srtyle="margin-bottom:0px !important">
                        <h3>Drop us a Message!</h3>
                        <div id="contactForm">
                            <div class="row" style="text-align: center; margin: 41px 0px;">
                                <asp:Label ID="lable_msg" runat="server" class="alert alert-success" Visible="false">Add a Blog</asp:Label>
                                <asp:Label ID="label_msg_1" runat="server" class="alert alert-danger" Visible="false">Add a Blog</asp:Label>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <%--<input type="text" id="name" name="name" placeholder="" required>--%>
                                    <asp:TextBox runat="server" ID="name" type="text" name="name" placeholder="Name *"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="name" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-sm-4">
                                    <%--<input type="text" id="name" name="name" placeholder="" required>--%>
                                    <asp:TextBox runat="server" ID="father_name" type="text" name="name" placeholder="Father Name *"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="father_name" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-sm-4">
                                    <asp:TextBox runat="server" ID="contactEmail" type="Email *" name="email" placeholder="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="contactEmail" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="contactEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                                </div>
                                <div class="col-sm-4">
                                    <asp:TextBox runat="server" ID="inputPhone" type="text" name="phone_no" placeholder="Phone No"></asp:TextBox>
                                    <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="inputPhone" ErrorMessage="Value must be Number" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="inputPhone" ErrorMessage="No should be of 10 digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                </div>
                                <div class="col-sm-4">
                                    <asp:TextBox runat="server" ID="date_of_birth" type="text" name="date_of_birth" placeholder="Date of Birth *"></asp:TextBox>
                                    <cc1:CalendarExtender ID="CalendarExtender2" runat="server"  Enabled="True" TargetControlID="date_of_birth" Format="dd/MM/yyyy"></cc1:CalendarExtender>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="date_of_birth" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-sm-4">
                                    <asp:TextBox runat="server" ID="qualification" type="text" name="qualification" placeholder="Highest Qualification *"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="qualification" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                </div>

                                <div class="col-sm-4">
                                    <asp:DropDownList runat="server" ID="courseSelect" DataValueField="id" DataTextField="name" AutoPostBack="true"></asp:DropDownList>
                                </div>

                                <div class="col-sm-4">
                                    <asp:TextBox runat="server" ID="address" type="text" name="address" placeholder="Address *"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="address" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                </div>

                                <div class="col-xs-12">
                                    <asp:TextBox runat="server" ID="contactMessage" name="message" class="form-control-textarea" TextMode="MultiLine" Rows="5" placeholder="Message(optional)"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="contactMessage" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                    <asp:Button runat="server" ID="button_submit" class="btn" type="submit" OnClick="button_submit_Click" Text="Apply" />
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact Form End -->

</asp:Content>
