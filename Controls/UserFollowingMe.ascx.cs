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

public partial class Controls_UserFollowingMe : System.Web.UI.UserControl
{
    DataBaseClass dbClass = new DataBaseClass();
    public DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (!object.Equals(Session["UserId"], null))
            {
                UserFollowingMe(int.Parse(Session["UserId"].ToString()));
            }
        }
    }

    public void UserFollowingMe(int Id)
    {
        string getUserFollowingMeQuery = "Select * FROM [USER_Registration] where ID IN (SELECT MyID as Id FROM Follow WHERE Follow_UserID='" + Id + "' ) ";
        dt = dbClass.ConnectDataBaseReturnDT(getUserFollowingMeQuery);
        if (dt.Rows.Count > 0)
        {
            FreindList.DataSource = dt;
            FreindList.DataBind();
        }
    }

    public string getHREF(object sURL)
    {
        DataRowView dRView = (DataRowView)sURL;
        string Id = dRView["Id"].ToString();
        return ResolveUrl("~/UserDetails.aspx?UserId=" + Id);
    }

    public string getSRC(object imgSRC)
    {
        DataRowView dRView = (DataRowView)imgSRC;
        string ImageName = dRView["ImageName"].ToString();
        if (ImageName == "")
        {
            return ResolveUrl(@"~/UserImage/Default.png");
        }
        else
        {
            return ResolveUrl("~/UserImage/" + dRView["ImageName"].ToString());
        }
    }
}
