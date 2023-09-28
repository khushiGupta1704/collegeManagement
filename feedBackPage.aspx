<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="feedBackPage.aspx.cs" Inherits="feedBackPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page header -->
    <div class="elh-page-header elh-img-bg elh-bg-9">
        <div class="elh-overlay"  style="padding-top: 35px;padding-bottom: 35px;">
            <div class="container text-center">
                <h3 class="elh-page-title">Feedback</h3>
                <ol class="breadcrumb">
                    <li><a href="index.aspx">Home</a></li>
                    <li class="active">Feedback</li>
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
                            <h3>Drop a Feedback</h3>
                            <div id="contactForm">
                                <div class="row" style="text-align:center;margin: 41px 0px;">    
             <asp:Label ID="lable_msg" runat="server" class="alert alert-success" Visible="false">Add a Blog</asp:Label>   
             <asp:Label ID="lable_danger" runat="server" class="alert alert-danger" Visible="false">Add a Blog</asp:Label>   
                    </div>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <%--<input type="text" id="name" name="name" placeholder="" required>--%>
                                        <asp:TextBox runat="server" id="inputName" type="text" name="name" placeholder="Name *"></asp:TextBox> 
                                    </div>
                                      <div class="col-sm-4">
                                    <asp:DropDownList runat="server" ID="inputProfession" DataValueField="id" DataTextField="name" AutoPostBack="true"></asp:DropDownList>
                                       </div>
                                    <div class="col-sm-4">                                       
                                    <asp:FileUpload ID="clientImage" runat="server" class="form-control file-upload-info" placeholder="Upload Image"></asp:FileUpload> 
                                    </div>
                                    <div class="col-xs-12">
                                        <asp:TextBox runat="server" id="contactMessage" name="message" class="form-control-textarea"  TextMode="MultiLine" Rows="5" placeholder="Comment"></asp:TextBox>
                        
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="contactMessage" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                        <asp:Button runat="server" id="button_submit" class="btn" type="submit" OnClick="button_submit_Click" Text="Send"></asp:Button>
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
