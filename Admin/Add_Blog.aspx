<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Blog.aspx.cs" Inherits="Admin_Add_Bloag" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <main class="content">
        <div class="container-fluid">
            <div class="header">
                <h1 class="header-title">ADD BLOGS</h1>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>TITLE*</label>
                                    <asp:TextBox ID="txtTitle" CssClass="form-control" TextMode="MultiLine" Rows="4" Columns="50" placeholder="" required="required" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <asp:Label ID="Label1" ForeColor="Red" runat="server">Add Image with Dimensions 250 px x 250 Px</asp:Label>
                                    <label>Image*</label>
                                    <asp:FileUpload ID="Fileupload1" CssClass="form-control" runat="server" />
                                    <br />
                                </div>
                                <div class="col-md-6">
                                    <label>Date*</label>
                                    <asp:TextBox ID="txtdate" CssClass="form-control" TextMode="Date" placeholder="" required="required" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-12">
                                    <label>Description*</label>
                                    <asp:TextBox ID="tiny" runat="server" TextMode="MultiLine" Rows="10" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div style="text-align: center">
                                <asp:Button ID="btnAdd" CssClass="btn btn-dark" OnClick="btnAdd_Click" runat="server" Text="ADD" />
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
<section id="dsp" runat="server" class="content">
    <div class="container">
        <div class="jumbotron" style="margin-top: 5px">
            <div class="block-header">
                <h2 style="font-size: x-large">RECENTLY ADDED</h2>
                <br />
            </div>
            <div id="Div1" class="table-responsive" runat="server">
                <asp:ScriptManager ID="ScriptManager1" runat="server" />
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                            <thead>
                                <tr style="font-size: small">
                                    <th>TITLE</th>
                                    <th>IMAGE</th>
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
                <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                <asp:TextBox ID="txtTitle1" TextMode="MultiLine" Height="100px" Width="180px" class="form-control" Visible="false" runat="server"></asp:TextBox>
                <asp:Label ID="lblId" runat="server" Visible="false" Text='<%# Eval("Bid") %>'></asp:Label>
                <asp:Label ID="lblimage" Visible="false" runat="server" Text='<%# Eval("Image") %>'></asp:Label>
                <asp:Label ID="lbldate1" Visible="false" runat="server" Text='<%# Eval("Datet") %>'></asp:Label>
            </td>
            <td>
                <figure>
                    <img src='<%# "images/" + Eval("Image") %>' onerror='this.style.display = "none"' width="200" height="100" alt="Image" />
                </figure>
                <asp:LinkButton ID="LinkButton4" CommandName="Iedit" CssClass="btn btn-warning" runat="server">EDIT</asp:LinkButton>
            </td>
            <td>
                <asp:Label ID="lbldate" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                <asp:TextBox ID="txtdate1" Width="100" class="form-control" Visible="false" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                <asp:TextBox ID="txtDescription" TextMode="MultiLine" Rows="4" CssClass="form-control" Visible="false" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton3" CommandName="edit" CssClass="btn btn-success" runat="server">EDIT</asp:LinkButton>
                <asp:LinkButton ID="LinkButton1" CommandName="Update" CssClass="btn btn-info" Visible="false" runat="server">UPDATE</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" CommandName="Delete" CssClass="btn btn-danger" runat="server">DELETE</asp:LinkButton>
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

