<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Edit_Blogimage.aspx.cs" Inherits="Admin_Edit_Blogimage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <main class="content" data-select2-id="14">
				<div class="container-fluid" data-select2-id="13">

					<div class="header">
						<h1 class="header-title">
						EDIT IMAGE
						</h1>
						
					</div>
                    	<div class="row" data-select2-id="12">
						<div class="col-12" data-select2-id="11">
							<div class="card" data-select2-id="10">
								<div class="card-header">
									<h5 class="card-title mb-0"></h5>
								</div>
								<div class="card-body" data-select2-id="9">
									
                                  <div class="row">
                                  <div id="Div1" runat="server"></div>
                                    <div class="col-md-6">
                                        <asp:Label ID="Label1" ForeColor="Red" runat="server"> Add Image with Dimensions 250*250 </asp:Label>
                                        <br />
                                       <label>Change Image*</label>
                                     <asp:FileUpload ID="Fileupload1" CssClass="form-control" runat="server" />
                                      <br />
                                  </div>
                                </div>
                          
                                <br />

                                <asp:Label ID="lblErr" ForeColor="Red" Visible="false" runat="server" Text=""></asp:Label>
                                <div style="text-align:center">
                                   <asp:Button ID="btnAdd" class="btn btn-dark" OnClick="btnAdd_Click" runat="server" Text="SAVE" />

                                    <asp:Button ID="Button1" class="btn btn-dark" OnClick="Button1_Click" runat="server" Text="BACK" />
                                </div>
                           
                        </div>
                    </div>
                </div>
                <!--// Forms-4 -->
            </div></div>
            </main>
</asp:Content>

