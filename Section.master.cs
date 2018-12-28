using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Section : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            Login.Value = Session["UserName"].ToString();
        }
    }

    protected void Unnamed_ServerClick(object sender, EventArgs e)
    {
        if (Login.Value == "Login")
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            if (Session["UserName"].Equals("Admin"))
            {
                Response.Redirect("~/AdminHome.aspx");
            }
            else
            {
                Response.Redirect("~/RoleIndex.aspx");
            }
        }
       
    }
}
