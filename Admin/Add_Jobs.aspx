<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Jobs.aspx.cs" Inherits="Admin_Add_Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <main class="content">
        <div class="container-fluid">
            <div class="header">
                <h1 class="header-title">ADD JOBS</h1>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Job Title*</label>
                                    <asp:TextBox ID="txtJobTitle" CssClass="form-control" TextMode="SingleLine" placeholder="Enter job title" required="required" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <label>Date*</label>
                                    <asp:TextBox ID="txtDate" CssClass="form-control" TextMode="Date" placeholder="Select date" required="required" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-12">
                                    <label>Job Description*</label>
                                    <asp:TextBox ID="txtJobDescription" runat="server" TextMode="MultiLine" Rows="10" CssClass="form-control" placeholder="Enter job description"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div style="text-align: center">
                                <asp:Button ID="btnAddJob" CssClass="btn btn-dark" OnClick="btnAddJob_Click" runat="server" Text="ADD" />
                                <asp:Button ID="btnBack" CssClass="btn btn-info" PostBackUrl="~/Admin/Admin_Home.aspx" runat="server" Text="BACK" />
                            </div>
                        </div>
                        <br />
                        <asp:Label ID="lblErr" ForeColor="Red" Visible="false" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <section id="dsp" runat="server" class="content">
        <div class="container">
            <div class="jumbotron" style="margin-top: 5px">
                <div class="block-header">
                    <h2 style="font-size: x-large">RECENTLY ADDED JOBS</h2>
                    <br />
                </div>
                <div id="Div1" class="table-responsive" runat="server">
                    <asp:ScriptManager ID="ScriptManager1" runat="server" />
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                                <thead>
                                    <tr style="font-size: small">
                                        <th>JOB TITLE</th>
                                        <th>DATE</th>
                                        <th>DESCRIPTION</th>
                                        <th>ACTION</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                                        <ItemTemplate>
                                            <tr style="font-size: medium">
                                                <td>
                                                    <asp:Label ID="lblJobTitle" runat="server" Text='<%# Eval("JobTitle") %>'></asp:Label>
                                                    <asp:TextBox ID="txtJobTitle1" TextMode="SingleLine" class="form-control" Visible="false" runat="server"></asp:TextBox>
                                                    <asp:Label ID="lblJobId" runat="server" Visible="false" Text='<%# Eval("JobId") %>'></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblDate" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                                                    <asp:TextBox ID="txtDate1" TextMode="Date" CssClass="form-control" Visible="false" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblJobDescription" runat="server" Text='<%# Eval("JobDescription") %>'></asp:Label>
                                                    <asp:TextBox ID="txtJobDescription1" TextMode="MultiLine" Rows="4" CssClass="form-control" Visible="false" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButtonEdit" CommandName="edit" CssClass="btn btn-success" runat="server">EDIT</asp:LinkButton>
                                                    <asp:LinkButton ID="LinkButtonUpdate" CommandName="Update" CssClass="btn btn-info" Visible="false" runat="server">UPDATE</asp:LinkButton>
                                                    <asp:LinkButton ID="LinkButtonDelete" CommandName="Delete" CssClass="btn btn-danger" runat="server">DELETE</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </section>
</asp:Content>