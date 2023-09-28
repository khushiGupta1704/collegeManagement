<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="contactUs.aspx.cs" Inherits="contactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page header -->
    <div class="elh-page-header elh-img-bg elh-bg-9">
        <div class="elh-overlay"  style="padding-top: 35px;padding-bottom: 35px;">
            <div class="container text-center">
                <h3 class="elh-page-title">Contact</h3>
                <ol class="breadcrumb">
                    <li><a href="index.aspx">Home</a></li>
                    <li class="active">Contact</li>
                </ol>
            </div>
        </div>
    </div>
    <!-- Page header End -->

        <!-- Contact Information -->
        <div class="elh-section elh-section-padding elh-bottom-0">
            <div class="container">
                <div class="row">
                    <div class="elh-info-boxes">
                        <div class="col-sm-4">
                            <div class="elh-info-box">
                                <div class="elh-infobox-icon">
                                    <img src="http://localhost:64318/front-assets/images/icons/address-book-blue.png" alt="...">
                                </div>
                                <h4 class="infobox-title">Our Address</h4>
                                <p class="infobox-text">177 Christchurch Road (Beside Park)<br/>New York, NY-258463</p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="elh-info-box">
                                <div class="elh-infobox-icon">
                                    <img src="http://localhost:64318/front-assets/images/icons/phone-blue.png" alt="...">
                                </div>
                                <h4 class="infobox-title">Phone Call</h4>
                                <p class="infobox-text">+1-2345-678-678 (Query)<br/>+1-2345-678-678 (Library)</p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="elh-info-box">
                                <div class="elh-infobox-icon">
                                    <img src="http://localhost:64318/front-assets/images/icons/envelope-blue.png" alt="...">
                                </div>
                                <h4 class="infobox-title">Drop a Mail</h4>
                                <p class="infobox-text">info@example.com<br/>query@example.com</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact Information End -->
        
        <!-- Office location -->
        <div class="cps-section map-area">
            <div class="google-map contact-location" id="location" data-lat="28.468212352458423" data-lng="77.04163731603977" data-zoom="14"></div>
        </div>
        <!-- Office location End -->
        
        <!-- Contact Form -->
        <div class="elh-section elh-section-padding" style="padding: 31px 0;">
            <div class="container">
               
                <div class="row">                   
                    <div class="col-md-8 col-md-offset-2">                         
                        <div class="quick-contact" srtyle="margin-bottom:0px !important">
                            <h3>Drop us a Message!</h3>
                            <div id="contactForm">
                                <div class="row" style="text-align:center;margin: 41px 0px;">    
             <asp:Label ID="lable_msg" runat="server" class="alert alert-success" Visible="false">Add a Blog</asp:Label>   
                    </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <%--<input type="text" id="name" name="name" placeholder="" required>--%>
                                        <asp:TextBox runat="server" id="contactName" type="text" name="name" placeholder="Name *"></asp:TextBox>                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="contactName" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-sm-6">
                                        <asp:TextBox runat="server" id="contactEmail" type="Email *" name="email" placeholder="Email"></asp:TextBox>                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="contactEmail" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="contactEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                                    </div>
                                     <div class="col-sm-6">
                                         <asp:TextBox runat="server" id="address" type="text" name="address" placeholder="Address *"></asp:TextBox>                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="address" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-sm-6">
                                       <asp:TextBox runat="server" id="inputPhone" type="text" name="phone_no" placeholder="Phone No"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="inputPhone" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="inputPhone" ErrorMessage="Value must be Number" /><br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="inputPhone" ErrorMessage="No should be of 10 digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 
                                    </div>

                                    <div class="col-sm-6">
                                    <asp:DropDownList runat="server" ID="courseSelect" DataValueField="id" DataTextField="name" AutoPostBack="true"></asp:DropDownList>
                                        </div>
                                    
                                    <div class="col-xs-12">
                                        <asp:TextBox runat="server" id="contactMessage" name="message" class="form-control-textarea"  TextMode="MultiLine" Rows="5" placeholder="Message"></asp:TextBox>
                        
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="contactMessage" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                        <asp:Button runat="server" id="button_submit" class="btn" type="submit" OnClick="button_submit_Click" Text="Send"></asp:Button>
                                    </div>
                                    <div class="col-xs-12">
                                        <p class="input-success">Your message sent. Thanks for contacting</p>
                                        <p class="input-error">Something went wrong. try again later</p>
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
