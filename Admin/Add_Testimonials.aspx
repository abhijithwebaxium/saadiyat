<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Testimonials.aspx.cs" Inherits="Admin_Add_Testimonials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <main class="content">
        <div class="container-fluid">
            <div class="header">
                <h1 class="header-title">ADD TESTIMONIALS</h1>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Name*</label>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" TextMode="SingleLine" placeholder="Enter name" Required="true"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label>Company*</label>
                                    <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control" TextMode="SingleLine" placeholder="Enter company" Required="true"></asp:TextBox>
                                </div>
                                
                                <div class="col-md-12">
                                    <label>Testimonial*</label>
                                <asp:TextBox ID="txtTestimonial" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div style="text-align: center">
                                <asp:Button ID="btnAdd" CssClass="btn btn-dark"  runat="server" Text="ADD" OnClick="btnAdd_Click"/>
                                <asp:Button ID="Button1" CssClass="btn btn-info" PostBackUrl="~/Admin/Admin_Home.aspx" runat="server" Text="BACK" />
                            </div>
                        </div>
                        <br />
                        <asp:Label ID="lblErr" ForeColor="Red" Visible="false" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </main>

</asp:Content>

