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

public partial class _Default : System.Web.UI.Page
{
    DataBaseClass dbClass = new DataBaseClass();
    public DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if ((!object.Equals(Request.Cookies["RTwitter_Email"], null)) && (!object.Equals(Request.Cookies["RTwitter_PWD"], null)) && (!object.Equals(Request.Cookies["RTwitter_UID"], null)))
            {
                if ((!object.Equals(Request.Cookies["RTwitter_Email"].Value, "")) && (!object.Equals(Request.Cookies["RTwitter_PWD"].Value, "")) && (!object.Equals(Request.Cookies["RTwitter_UID"], "")))
                {
                    Session["UserEmail"] = Request.Cookies["RTwitter_Email"].Value;
                    Session["Password"] = Request.Cookies["RTwitter_PWD"].Value;
                    Session["UserId"] = Request.Cookies["RTwitter_UID"].Value;
                }

            }
            if (!object.Equals(Session["UserId"], null))
            {
                Response.Redirect("~/Welcome/Default.aspx");
            }

        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        dt = new DataTable();
        string chkUser = "Select * FROM [User_Registration] where Email='" + txtEmail.Text + "' AND Password='" + txtPwd.Text + "'";
        dt = dbClass.ConnectDataBaseReturnDT(chkUser);
        if (dt.Rows.Count > 0)
        {
            Session["UserId"] = dt.Rows[0]["Id"].ToString();

            if (chkRemember.Checked == true)
            {
                Response.Cookies["RTwitter_Email"].Value = txtEmail.Text;
                Response.Cookies["RTwitter_PWD"].Value = txtPwd.Text;
                Response.Cookies["RTwitter_UID"].Value = Session["UserId"].ToString();

                Response.Cookies["RTwitter_Email"].Expires = DateTime.Now.AddMonths(3);
                Response.Cookies["RTwitter_PWD"].Expires = DateTime.Now.AddMonths(3);
                Response.Cookies["RTwitter_UID"].Expires = DateTime.Now.AddMonths(3);

            }
            Response.Redirect("~/Welcome/Default.aspx");
        }
    }
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        dt = new DataTable();
        string chkUser = "Select * FROM [User_Registration] where Email='" + txtEmail.Text + "' AND Password='" + txtPwd.Text + "'";
        dt = dbClass.ConnectDataBaseReturnDT(chkUser);
        if (dt.Rows.Count > 0)
        {
        }
        else
        {
            string RegisterQuery = "INSERT INTO [User_Registration] (Email,Password,Name) VALUES('" + txtRegEmail.Text + "','" + txtRegPwd.Text + "','" + txtFullName.Text + "')";
            dbClass.ConnectDataBaseToInsert(RegisterQuery);

            dt = new DataTable();
            string chkUser1 = "Select * FROM [User_Registration] where Email='" + txtRegEmail.Text + "' AND Password='" + txtRegPwd.Text + "'";
            dt = dbClass.ConnectDataBaseReturnDT(chkUser1);
            if (dt.Rows.Count > 0)
            {
                Session["UserId"] = dt.Rows[0]["Id"].ToString();
                Response.Redirect("~/Welcome/Default.aspx");
            }
        }
    }
}
