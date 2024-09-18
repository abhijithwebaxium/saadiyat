using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.IO;

public partial class admin_Add_route : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            disp();
        }
    }
    private void disp()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select top 5 rid,name,fromr,tor,point,km from tbl_route order by rid desc", con);
        SqlDataReader dr = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(dr);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        dr.Close();
        con.Close();
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        Label lblID = (Label)e.Item.FindControl("lblId");
        if (e.CommandName == "edit")
        {
            Session["editid"] = lblID.Text;
            Session["return"] = "Add";
            Response.Redirect("edit_route.aspx");
        }
        if (e.CommandName == "Delete")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from tbl_route where rid=@rid", con);
            cmd.Parameters.AddWithValue("rid", lblID.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Deleted !!');", true);
            disp();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (txtname.Text != "")
        {

            con.Open();


            SqlCommand cmd = new SqlCommand("ins_route", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@fromr", txtfrom.Text);
            cmd.Parameters.AddWithValue("@tor", txtto.Text);
            cmd.Parameters.AddWithValue("@point", txtpoint.Text);
            cmd.Parameters.AddWithValue("@km", txtkm.Text);

            cmd.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Route Added Sucessfully !!');", true);

            txtname.Text = "";
            txtfrom.Text = "";
            txtto.Text = "";
            txtpoint.Text = "";
            txtkm.Text = "";

            disp();


        }



        else
        {
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Please Enter details');", true);

        }

    }
}