using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class Regist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

  

    protected void btn_submit_ServerClick(object sender, EventArgs e)
    {
        DreamWarDataContext dw = new DreamWarDataContext(ConfigurationManager.ConnectionStrings["DreamWarConnectionString"].ToString());
        string name = this.txtUserName.Value.Trim();
        string pass = this.txtPassword.Value.Trim();
        string conpass = this.txtConfirmation.Value.Trim();
        if (pass==conpass)
        {
            Session["UserName"] = this.txtUserName.Value;
            Session["UserPwd"] = this.txtPassword.Value;
            User info = new User();
            info.UserName = name;
            info.Password = pass;
            dw.User.InsertOnSubmit(info);
            dw.SubmitChanges();
            Response.Redirect("~/HomePage.aspx");
        }
    }
}