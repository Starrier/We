using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

public partial class Member_ModifyPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSubmit_ServerClick(object sender, EventArgs e)
    {
        string newpass = this.txtChange.Value.Trim();
        DreamWarDataContext dw = new DreamWarDataContext(ConfigurationManager.ConnectionStrings["DreamWarConnectionString"].ToString());
        User info = new User();
        var result1 = from u in dw.User
                      where u.UserName == Session["UserName"].ToString()
                      select u;
        foreach (User s in result1)
        {
            s.Password = newpass;
        }
        dw.SubmitChanges();

        Response.Redirect("~/Login.aspx");
    }
}