using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void submit_ServerClick(object sender, EventArgs e)
    {
        string name = this.txtUserName.Value.Trim();
        string pwe = this.txtpPssword.Value.Trim();
        DreamWarDataContext dw = new DreamWarDataContext();
        var result = from v in dw.User
                     where v.UserName == name && v.Password == pwe
                     select v;
        if (result.Count() > 0)
        {
            Session["UserName"] = this.txtUserName.Value;
            Session["UserPwd"] = this.txtpPssword.Value;
            Response.Redirect("~/HomePage.aspx");
        }
        else
        {
            Response.Write("<script> alter(Login Failture!); location='javascript:history.go(-1)'</script>");
        }
    }
}