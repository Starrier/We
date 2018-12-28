using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Member_FileUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed_ServerClick(object sender, EventArgs e)
    {
        DreamWarDataContext dw = new DreamWarDataContext();
        string name = this.txtName.Value.Trim();
        string pwd = this.txtPassword.Value.Trim();
        String infro = this.txtInfromation.Value.Trim();
        string sex = Request.Form["sex"];
        Writers info = new Writers();
        info.WriterName= name;
        info.Password = pwd;
       
        info.Information = infro;
        dw.Writers.InsertOnSubmit(info);
        dw.SubmitChanges();
        Response.Redirect("~/HomePage.aspx");

    }
}