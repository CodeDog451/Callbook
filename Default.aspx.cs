using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        Session["username"] = UserName.Text;        
        Session["password"] = Password.Text;
        Session["security"] = 0;
        GridViewUser.DataBind();
         
        if (GridViewUser.Rows.Count > 0)
        {
            GridViewUser.SelectedIndex = 0;
            this.LabelMessage.Text = "Good Login";
            
            Session["security"] = GridViewUser.SelectedRow.Cells[3].Text;
            Session["fullname"] = GridViewUser.SelectedRow.Cells[4].Text;
            
            this.LabelMessage.Text = "Welcome <br>" + GridViewUser.SelectedRow.Cells[4].Text;
            Response.Redirect("~/main.aspx");
            
        }
        else
        {
            this.LabelMessage.Text = "Invalid Login";
            this.UserName.Focus();
        }
    }
}
