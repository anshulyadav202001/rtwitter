using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_Header : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((!object.Equals(Request.Cookies["RTwitter_Email"], null)) && (!object.Equals(Request.Cookies["RTwitter_PWD"], null)) && (!object.Equals(Request.Cookies["RTwitter_UID"], null)))
        {
            if ((!object.Equals(Request.Cookies["RTwitter_Email"].Value, "")) && (!object.Equals(Request.Cookies["RTwitter_PWD"].Value, "")) && (!object.Equals(Request.Cookies["RTwitter_UID"], "")))
            {
                Session["UserEmail"] = Request.Cookies["RTwitter_Email"].Value;
                Session["Password"] = Request.Cookies["RTwitter_PWD"].Value;
                Session["UserId"] = Request.Cookies["RTwitter_UID"].Value;
            }
            else
            {
            }
        }
        if (!object.Equals(Session["UserId"], null))
        {
            Logout.Visible = true;
            HLinkEditProfile.Visible = true;
        }
        else
        {
            Logout.Visible = false;
            HLinkEditProfile.Visible = false;
        }
    }

    protected void Logout_Click(object sender, EventArgs e)
    {
        Session["UserId"] = null;
        Response.Cookies["RTwitter_Email"].Value = null;
        Response.Cookies["RTwitter_UID"].Value = null;
        Response.Cookies["RTwitter_PWD"].Value = null;
        Session.Abandon();
        System.Web.Security.FormsAuthentication.SignOut();
        Response.Redirect(ResolveUrl("~/Default.aspx"));
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SearchResult.aspx?SearchText=" + txtSearch.Text);
    }
}
