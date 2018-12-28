using System;
using System.Data.OleDb;
using System.Data;

namespace _211
{
    /// <summary>
    /// Intro 的摘要说明。
    /// </summary>
    public class CommentBO : IDisposable
    {
        private string Commid;
        private int pagesize = 10;
        private string CommentContent;
        DataTable dt = new DataTable();
		public CommentBO(){
		}

        public CommentBO(string II, int page)
        {
            Commid = II;
            CommentContent = "";
            string linkhtml = string.Empty;
            int pgCount = 1;
            dt = TableQuery.CommentQuery(pagesize, page, Commid);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                CommentContent += "  <div class=\"comment\">";
                CommentContent += "<div class=\"comment-caption\"><span  class=\"comment-user\">" + dt.Rows[i][3] + "发表于 </span> <span  class=\"comment-date\"> " + dt.Rows[i][6] + "</span></div>";
                CommentContent += "<div class=\"comment-text\">" + dt.Rows[i][4] + "</div>";
                if (dt.Rows[i][5].ToString() != "")
                {
                    CommentContent += "<div class=\"comment-reply\">回复：" + dt.Rows[i][5] + "</div>";//51^aspx
                }
                CommentContent += "</div>";
            }
            int rscount = (int)DBQuery.ExecuteScalar("select count(commentid) from [comment] where comment.commentparentid=" + Commid);
            CommentContent += "<div class=\"pagebar\">已有" + rscount + "条评论&nbsp;{$link_list$}</div>";
            pgCount = (rscount / pagesize) + 1;
            if (pgCount > 1)
            {
                for (int j = 1; j <= pgCount; j++)
                {
                    linkhtml = linkhtml + ((j == page+1) ? "<span class=\"current\">" + j + "</span>&nbsp;" : "<a href=\"javascript:void(0)\" onclick=\"GetComment(" + Commid + "," + j + ")\">" + j + "</a>&nbsp;");
                }
            }
            else
            {
                linkhtml = "";
            }

            CommentContent = CommentContent.Replace("{$link_list$}",linkhtml);    

        }


		public string getAdminComment(string II, int page)
        {

            Commid = II;
            CommentContent = "";
            string linkhtml = string.Empty;
            int pgCount = 1;
            dt = TableQuery.CommentQuery(pagesize, page, Commid);

			
			CommentContent += "<div class=\"box\">\n";
			CommentContent += "  <div class=\"box-title\">&raquo;&nbsp;评论管理</div>\n";
			CommentContent += "  <div class=\"box-body\">\n";
			CommentContent += "    <form action=\"?action=del\" id=\"list\" method=\"post\">\n";
			CommentContent += "      <ul class=\"list\" id=\"list\">\n";

			if(dt.Rows.Count!=0){


            for (int i = 0; i < dt.Rows.Count; i++)
            {
			CommentContent += "        <li  onmouseover=\"this.className='onmouseover'\" onmouseout=\"this.className='onmouseout'\">\n";
			CommentContent += "          <input name=\"deleteid\" value=\"" + dt.Rows[i][0] +"\" type=\"checkbox\" />\n";
			CommentContent += "          <a href=\"?action=Home&do=edit&id=" + dt.Rows[i][0] +"\">" + dt.Rows[i][3] +":" + dt.Rows[i][4] +"</a></li>\n";
            }
		}
		else{
			CommentContent += "暂无评论内容";
		}

            int rscount = (int)DBQuery.ExecuteScalar("select count(commentid) from [comment] where comment.commentparentid=" + Commid);
            pgCount = (rscount / pagesize) + 1;
			CommentContent += "      </ul>\n";
			CommentContent += "    </form>\n";
            if (pgCount > 0)
            {
				
				CommentContent += " <div class=\"pagenav\"> <a href=\"javascript:CheckAll()\">全选</a><a href=\"javascript:$('list').submit()\">删除</a>";
				CommentContent += "<a href='?action=Home&page=" + (page==0?1:page) + "'>&laquo;</a>";

                for (int j = 1; j <= pgCount; j++)
                {
					CommentContent +=( (j == (page+1))? "<span class=\"current\">"+ j +"</span>": "<a href=\"?action=Home&page=" + j + "\">" + j + "</a>");
				}


				CommentContent += "<a href='?action=Home&page=" + (page+2)+ "'>&raquo;</a>";
				CommentContent += "<span class=\"info\">页次：<b>"+(page+1)+"</b>/<b>"+pgCount+"</b> 全部：<b>"+rscount+"</b>条</span> </div>\n";
			}
			CommentContent += "    <div style=\"clear:left\"></div>\n";
			CommentContent += "    <div style=\"padding:4px\"></div>\n";
			CommentContent += "  </div></div>\n";


			return CommentContent;

        }

		public string getCommentEdit(string id)
        {

				dt = DBQuery.OpenQuery("select * from comment where commentid ="+id);
//				CommentContent +=  dt.Rows[0][0];
				CommentContent += "<div class=\"box\">\n";
				CommentContent += "  <div class=\"box-title\">&raquo;&nbsp;修改评论</div>\n";
				CommentContent += "  <div class=\"box-body\">\n";
				CommentContent += "    <form action=\"admin.aspx?action=savereply&id="+dt.Rows[0][0]+"\" method=\"post\">\n";
				CommentContent += "      <table>\n";
				CommentContent += "        <tr>\n";
				CommentContent += "          <td style=\"text-align:center;padding-left:5px\">评论文章：</td>\n";
				CommentContent += "          <td><a href=\""+dt.Rows[0][2]+".html\" onclick=\"window.open(this.href);return false\">"+dt.Rows[0][2]+".html</a></td>\n";
				CommentContent += "        </tr>\n";
				CommentContent += "        <tr>\n";
				CommentContent += "          <td style=\"text-align:center;padding-left:5px\">评论用户：</td>\n";
				CommentContent += "          <td>"+dt.Rows[0][3]+"</td>\n";
				CommentContent += "        </tr>\n";
				CommentContent += "        <tr>\n";
				CommentContent += "          <td style=\"text-align:center;padding-left:5px;vertical-align:top\">评论内容：</td>\n";
				CommentContent += "          <td><textarea name=\"commenttext\"  onfocus=\"this.className='focus'\" onblur=\"this.className='blur'\" class=\"blur\"  style=\"width:400px;height:80px;\">"+dt.Rows[0][4]+"</textarea></td>\n";
				CommentContent += "        </tr>\n";
				CommentContent += "        <tr>\n";
				CommentContent += "          <td style=\"text-align:center;padding-left:5px;vertical-align:top\">评论回复：</td>\n";
				CommentContent += "          <td><textarea name=\"commentreply\"  onfocus=\"this.className='focus'\" onblur=\"this.className='blur'\" class=\"blur\"  style=\"width:400px;height:80px;\">"+dt.Rows[0][5]+"</textarea></td>\n";
				CommentContent += "        </tr>\n";
				CommentContent += "        <tr>\n";
				CommentContent += "          <td style=\"text-align:center;padding-left:5px;\">评论时间：</td>\n";
				CommentContent += "          <td>"+dt.Rows[0][6]+"</td>\n";
				CommentContent += "        </tr>\n";
				CommentContent += "        <tr>\n";
				CommentContent += "          <td style=\"text-align:center;padding-left:5px;\">评论IP：</td>\n";
				CommentContent += "          <td>"+dt.Rows[0][7]+"</td>\n";
				CommentContent += "        </tr>\n";
				CommentContent += "        <tr>\n";
				CommentContent += "          <td></td>\n";
				CommentContent += "          <td><input type=\"submit\"  value=\"提交\" class=\"put\" /> <input type=\"button\"  value=\"返回\" class=\"put\" onclick=\"window.history.go(-1);\" /></td>\n";
				CommentContent += "        </tr>\n";
				CommentContent += "      </table>\n";
				CommentContent += "      <input type=\"hidden\" name=\"commentid\" value=\"2\" />\n";
				CommentContent += "    </form>\n";
				CommentContent += "  </div>\n";
				CommentContent += "</div>\n";
				CommentContent += "\n";
				return CommentContent;

		}


        public void Dispose()
        {
            GC.SuppressFinalize(this);
        }



        public string getCommentContent()
        {
            return CommentContent;
        }

        public void setCommentContent(string IC)
        {
            CommentContent = StringManager.StringSelected(IC);
        }
    }
}
