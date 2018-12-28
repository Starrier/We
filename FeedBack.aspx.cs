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

public partial class FeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed_ServerClick(object sender, EventArgs e)
    {
        DreamWarDataContext dw = new DreamWarDataContext(ConfigurationManager.ConnectionStrings["DreamWarConnectionString"].ToString());
        string username = this.UserName.Value.Trim();
        string txtArea = this.textArea.Value.Trim();
        table info = new table();
        info.Username = username;
        info.Message = txtArea;
        dw.table.InsertOnSubmit(info);
        dw.SubmitChanges();
        
    }
}