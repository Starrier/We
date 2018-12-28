using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Linq;

public partial class UserList : System.Web.UI.Page
{
  

    protected void Bind()
    {
        DreamWarDataContext dw = new DreamWarDataContext();
        var results = from c in dw.User
                      select c;
        gvUsers.DataSource = results;
        gvUsers.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnQueryAll_Click(object sender, EventArgs e)
    {
        Bind();
    }

    protected void btnFuzzy_Click(object sender, EventArgs e)
    {
        Response.Redirect("FuzzyQuery.aspx");
    }

    protected void Insert_Click(object sender, EventArgs e)
    {
        Response.Redirect("Insert.aspx");
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("Update.aspx?UserName=" + txtInput.Text);
    }

    protected void Delete_Click(object sender, EventArgs e)
    {
        DreamWarDataContext dw = new DreamWarDataContext();
        var result = from c in dw.User
                     where c.UserName == txtInput.Text
                     select c;
        dw.User.DeleteAllOnSubmit(result);
        dw.SubmitChanges();
        Bind();
    }
}