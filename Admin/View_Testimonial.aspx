<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="View_Testimonial.aspx.cs" Inherits="Admin_View_Testimonial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <main class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="container">
                                <div class="jumbotron" style="margin-top: 5px">
                                    <div class="block-header">
                                        <h3 style="font-size: x-large">Testimonials List:</h3>
                                        <br />
                                    </div>
                                    <div style="text-align:right">
                                        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" Postbackurl="~/admin/Admin_Home.aspx" runat="server">BACK</asp:LinkButton>
                                    </div>
                                    <div id="Div1" class="table-responsive">
                                        <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                                            <thead>
                                                <tr>
                                                    <th>NAME</th>
                                                    <th>COMPANY</th>
                                                    <th>TESTIMONIAL</th>
                                                    <th>ACTION</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:Repeater ID="Repeater1" OnItemCommand="Repeater1_ItemCommand" runat="server">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblId" runat="server" Text='<%# Eval("Tid") %>' Visible="false"></asp:Label>
                                                                <%# Eval("Name") %>
                                                            </td>
                                                            <td><%# Eval("Company") %></td>
                                                            <td><%# Eval("Testimonial") %></td>
                                                            <td>
                                                                <asp:LinkButton ID="LinkButton2" CommandName="Delete" CssClass="btn btn-danger" runat="server">DELETE</asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
