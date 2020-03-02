using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class Resort : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void drptype_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpprice.Items.Clear();
        drpprice.Items.Add("--Price--");
        if (drptype.SelectedItem.Text == "Basic")
        {
            drpprice.Items.Add(" 5000 ");
        }
        if (drptype.SelectedItem.Text == "Delux")
        {
            drpprice.Items.Add(" 10,000 ");
        }
        if (drptype.SelectedItem.Text == "Special")
        {
            drpprice.Items.Add(" 15,000 ");
        }
        if (drptype.SelectedItem.Text == "Maharaja")
        {
            drpprice.Items.Add(" 20,000 ");
        }
    }
    protected void btnbook_Click(object sender, EventArgs e)
    {
        string msg;
        if(rdomale.Checked)
        {
            msg = rdomale.Text;
        }
        else
        {
            msg = rdofemale.Text;
        }
        Response.Write("<table align='center'>");
        Response.Write("<tr><td>Name : </td><td>" + txtname.Text + "</td></tr>");
        Response.Write("<tr><td>Gender : </td><td>" + msg + "</td></tr>");
        Response.Write("<tr><td>Age : </td><td>" + txtage.Text + "</td></tr>");
        Response.Write("<tr><td>Occupation : </td><td>" + txtocu.Text + "</td></tr>");
        Response.Write("<tr><td>Number Of Person : </td><td>" + txtperson.Text + "</td></tr>");
        Response.Write("<tr><td>Accomodation Type : </td><td>" + drptype.SelectedItem.Text + "</td></tr>");
        Response.Write("<tr><td>Price : </td><td>" + drpprice.SelectedItem.Text + "</td></tr>");
        Response.Write("<tr><td>Resort Type : </td><td>" + drprtype.SelectedItem.Text + "</td></tr>");
        Response.Write("</table>");
    }
}
