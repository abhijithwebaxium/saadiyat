<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="View_News.aspx.cs" Inherits="Admin_View_News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
<main class="content" data-select2-id="14">
        <div class="container-fluid" data-select2-id="13">
            <div class="row" data-select2-id="12">
                <div class="col-12" data-select2-id="11">
        <div class="container">
          <div class="jumbotron" style="margin-top: 5px">
                <div class="block-header">
                    <h3 style="font-size: x-large">News List:</h3>
                    <br />
                </div>
                <div style="text-align:right">
                     <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" 
                         Postbackurl="~/admin/Admin_Home.aspx" runat="server" >BACK</asp:LinkButton>
                </div>
                <div id="Div1" class="table-responsive" runat="server">
                    <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                        <thead>
                            <tr style="font-size:small ">
                                 <th>TITLE</th>
                                <th>IMAGE</th>
                                 <th>DATE</th>
                                 <th>DESCRIPTION</th>
                                <th>ACTION</th>
                            </tr>
                        </thead>
                        <tbody>
                             <asp:Repeater ID="Repeater1" OnItemCommand="Repeater1_ItemCommand" runat="server">
    <ItemTemplate>
        <tr style="font-size: medium">
            <td>
                <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                <asp:TextBox ID="txtTitle1" TextMode="MultiLine" Height="100px" Width="180px" class="form-control" Visible="false" runat="server"></asp:TextBox>
                <asp:Label ID="lblId" runat="server" Visible="false" Text='<%# Eval("Nid") %>'></asp:Label>
                <asp:Label ID="lblimage" Visible="false" runat="server" Text='<%# Eval("Image") %>'></asp:Label>
                <asp:Label ID="lbldate1" Visible="false" runat="server" Text='<%# Eval("Datet") %>'></asp:Label>
            </td>
            <td>
                <figure>
                    <asp:Image ID="imgNews" ImageUrl='<%# "images/" + Eval("Image") %>' runat="server" Width="200" Height="100" AlternateText="Image" OnError="this.style.display = 'none'" />
                </figure>
                <asp:LinkButton ID="LinkButton4" CommandName="Iedit" CssClass="btn btn-warning" runat="server">EDIT</asp:LinkButton>
            </td>
            <td>
                <asp:Label ID="lbldate" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                <asp:TextBox ID="txtdate1" Width="100" class="form-control" Visible="false" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lbldescription" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                <asp:TextBox ID="txtdescription" TextMode="MultiLine" Rows="4" CssClass="form-control" Visible="false" runat="server"></asp:TextBox>
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

