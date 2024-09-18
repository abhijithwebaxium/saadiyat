<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="View_Jobs.aspx.cs" Inherits="Admin_View_Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <main class="content" data-select2-id="14">
                <div class="container-fluid" data-select2-id="13">
                    <div class="row" data-select2-id="12">
                        <div class="col-12" data-select2-id="11">
                            <div class="container">
                                <div class="jumbotron" style="margin-top: 5px">
                                    <div class="block-header">
                                        <h3 style="font-size: x-large">Jobs List:</h3>
                                        <br />
                                    </div>
                                    <div style="text-align:right">
                                        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" 
                                            PostBackUrl="~/admin/Admin_Home.aspx" runat="server">BACK</asp:LinkButton>
                                    </div>
                                    <div id="Div1" class="table-responsive" runat="server">
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
                                                                <asp:TextBox ID="txtJobTitle1" TextMode="SingleLine" CssClass="form-control" Visible="false" runat="server" Text='<%# Eval("JobTitle") %>'></asp:TextBox>
                                                                <asp:Label ID="lblJobId" runat="server" Visible="false" Text='<%# Eval("JobId") %>'></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblDate" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                                                                <asp:TextBox ID="txtDate1" TextMode="Date" CssClass="form-control" Visible="false" runat="server" Text='<%# Eval("Date") %>'></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblJobDescription" runat="server" Text='<%# Eval("JobDescription") %>'></asp:Label>
                                                                <asp:TextBox ID="txtJobDescription1" TextMode="MultiLine" Rows="4" CssClass="form-control" Visible="false" runat="server" Text='<%# Eval("JobDescription") %>'></asp:TextBox>
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
