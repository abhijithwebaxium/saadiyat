<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Home.aspx.cs" Inherits="Admin_Admin_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <main class="content">
     <div class="container-fluid">
         <div class="header">
             <h1 class="header-title">Welcome To Saadiyat Auditing</h1>
         </div>
         
         <div class="row mt-3">
             <div class="col-md-2">
                 <asp:Button ID="btnNews" runat="server" Text="News" CssClass="btn btn-success btn-lg btn-block" OnClick="btnNews_Click" />
             </div>
             <div class="col-md-2 mt-3 mt-md-0">
                 <asp:Button ID="btnBlogs" runat="server" Text="Blogs" CssClass="btn btn-success btn-lg btn-block" OnClick="btnBlogs_Click" />
             </div>
             <div class="col-md-2">
    <asp:Button ID="btnTestimonials" runat="server" Text="Testimonials" CssClass="btn btn-success btn-lg btn-block" OnClick="btnTestimonials_Click" />
</div>
             <div class="col-md-2">
    <asp:Button ID="btnJobs" runat="server" Text="Jobs" CssClass="btn btn-success btn-lg btn-block" OnClick="btnJobs_Click" />
</div>
         </div>
        < br>

     </div>
 </main>
</asp:Content>

