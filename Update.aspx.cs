using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DreamWarDataContext dw = new DreamWarDataContext();
        User info = new User();
        info.UserName = txtInput.Text;
        info.Password = txtPassword.Text;
        dw.User.InsertOnSubmit(info);
        dw.SubmitChanges();
        Response.Redirect("UserList.aspx");
    }
}