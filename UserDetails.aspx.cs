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

public partial class UserDetails : System.Web.UI.Page
{
    DataBaseClass dbClass = new DataBaseClass();
    public DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (!object.Equals(Session["UserId"], null))
            {
                if (!object.Equals(Request.QueryString["UserId"], null))
                {
                    if (Session["UserId"].ToString() == Request.QueryString["UserId"].ToString())
                    {
                        btnFollow.Visible = false;
                    }

                    dt = new DataTable();
                    string chkUser = "Select * FROM [Follow] where MyID='" + Session["UserId"].ToString() + "' AND Follow_UserID='" + Request.QueryString["UserId"].ToString() + "'";
                    dt = dbClass.ConnectDataBaseReturnDT(chkUser);
                    if (dt.Rows.Count > 0)
                    {
                        btnFollow.Visible = false;
                    }
                    getUserDetails(Convert.ToInt32(Request.QueryString["UserId"].ToString()));
                }
            }
        }
    }

    private void getUserDetails(int UserID)
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

        }
    }

    protected void btnFollow_Click(object sender, EventArgs e)
    {
        string RegisterQuery = "INSERT INTO [Follow] (MyID,Follow_UserID) VALUES('" + Session["UserId"].ToString() + "','" + Request.QueryString["UserId"].ToString() + "')";
        dbClass.ConnectDataBaseToInsert(RegisterQuery);
        Response.Redirect("~/Welcome/Default.aspx");
    }
}
