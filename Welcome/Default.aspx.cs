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

public partial class Welcome_Default : System.Web.UI.Page
{
    DataBaseClass dbClass = new DataBaseClass();
    public DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (!object.Equals(Session["UserId"], null))
            {
                getLogInUserDetails(Convert.ToInt32(Session["UserId"].ToString()));
                HLinkMyProfile.NavigateUrl = "~/UserDetails.aspx?UserId=" + Session["UserId"].ToString();
            }
            else
            {
                Response.Redirect("../Default.aspx");
            }
        }
    }

    private void getLogInUserDetails(int UserID)
    {
        dt = new DataTable();
        string chkUser = "Select * FROM [User_Registration] where Id='" + UserID + "'";
        dt = dbClass.ConnectDataBaseReturnDT(chkUser);
        if (dt.Rows.Count > 0)
        {
            lblName.Text = dt.Rows[0]["Name"].ToString();
            if (dt.Rows[0]["Imagename"].ToString() == "")
                imgUser.ImageUrl = "~/UserImage/Default.png";
            else
                imgUser.ImageUrl = "~/UserImage/" + dt.Rows[0]["Imagename"].ToString();

            DataTable dtTweets = new DataTable();
            string CountTweets = "Select Count (*) As TotalTweets FROM [Tweet] where Tweet_UserID='" + UserID + "'";
            dtTweets = dbClass.ConnectDataBaseReturnDT(CountTweets);
            lblTweetsCount.Text = dtTweets.Rows[0]["TotalTweets"].ToString();

            DataTable dtFollowing = new DataTable();
            string CountFollowing = "Select Count (*) As TotalFollowing FROM [Follow] where MyID='" + UserID + "'";
            dtTweets = dbClass.ConnectDataBaseReturnDT(CountFollowing);
            lblFollowing.Text = dtTweets.Rows[0]["TotalFollowing"].ToString();

            DataTable dtFollowers = new DataTable();
            string CountFollowers = "Select Count (*) As TotalFollowers FROM [Follow] where Follow_UserID='" + UserID + "'";
            dtTweets = dbClass.ConnectDataBaseReturnDT(CountFollowers);
            lblFollowers.Text = dtTweets.Rows[0]["TotalFollowers"].ToString();
        }
    }
    protected void btnTweet_Click(object sender, EventArgs e)
    {
        string RegisterQuery = "INSERT INTO [Tweet] (Tweet_UserID,Tweet) VALUES('" + Session["UserId"].ToString() + "','" + txtTweets.Text + "')";
        dbClass.ConnectDataBaseToInsert(RegisterQuery);
        Response.Redirect("~/Welcome/Default.aspx");
    }
}
