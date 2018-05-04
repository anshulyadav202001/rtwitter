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
 using System.Data.SqlClient;

public partial class Controls_AllTweetsForAUser : System.Web.UI.UserControl
{
    DataBaseClass dbClass = new DataBaseClass();
    public DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (!object.Equals(Session["UserId"], null))
            {
                GetUserTweets(int.Parse(Session["UserId"].ToString()));
            }
            else
            {
                Response.Redirect("../Default.aspx");
            }

        }
    }
    public void GetUserTweets(int Id)
    {
        string getUserScraps = "SELECT u.Id as UserId,u.Name,u.ImageName,T.TweetId,T.Tweet_UserID,T.Tweet,T.Tweet_Date FROM [USER_Registration] as u, Tweet as T WHERE u.Id=T.Tweet_UserID AND T.Tweet_UserID='" + Id + "'";
        dt = dbClass.ConnectDataBaseReturnDT(getUserScraps);
        if (dt.Rows.Count > 0)
        {
            GridViewUserTweets.DataSource = dt;
            GridViewUserTweets.DataBind();
        }
    }

    public string getUserHREF(object sURL)
    {
        DataRowView dRView = (DataRowView)sURL;
        string Id = dRView["UserId"].ToString();
        return ResolveUrl("~/UserDetails.aspx?Id=" + Id);
    }

    public string getSRC(object imgSRC)
    {
        DataRowView dRView = (DataRowView)imgSRC;
        string ImageName = dRView["ImageName"].ToString();
        if (ImageName == "NoImage")
        {
            return ResolveUrl(@"~/Site_Images/image_missing.jpg");
        }
        else
        {
            return ResolveUrl("~/UserImage/" + dRView["ImageName"].ToString());
        }
    }
}
