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

public partial class Welcome_EditProfile : System.Web.UI.Page
{
    DataBaseClass dbClass = new DataBaseClass();
    public DataTable dt;
    string ToSaveImageName;
    string sImageFileExtension;

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

            Session["UserId"] = dt.Rows[0]["Id"].ToString();
            txtName.Text = dt.Rows[0]["Name"].ToString();
            txtEmail.Text = dt.Rows[0]["Email"].ToString();
            txtPassword.Text = dt.Rows[0]["Password"].ToString();
            txtProfileCreated.Text = dt.Rows[0]["CreatedOn"].ToString();


        }
    }
    protected void btnUpdateProfile_Click(object sender, EventArgs e)
    {
        if (UploadUserPhoto.PostedFile != null)
        {
            string myMap = MapPath("~/").ToLower();

            string ImageName = UploadUserPhoto.PostedFile.FileName;

            sImageFileExtension = ImageName.Substring(ImageName.LastIndexOf(".")).ToLower();
            if (sImageFileExtension == ".gif" || sImageFileExtension == ".png" || sImageFileExtension == ".jpg" || sImageFileExtension == ".jpeg" || sImageFileExtension == ".bmp")
            {
                string ImageSaveURL = myMap + "UserImage/" + Session["UserId"].ToString() + sImageFileExtension;
                try
                {
                    UploadUserPhoto.PostedFile.SaveAs(ImageSaveURL);
                    string updateLastLogin = "Update [User_Registration] SET Name='" + txtName.Text + "', Password='" + txtPassword.Text + "' , ImageName='" + Session["UserId"].ToString() + sImageFileExtension + "' where Id='" + Session["UserId"].ToString() + "'";
                    dbClass.ConnectDataBaseToInsert(updateLastLogin);
                    Response.Redirect("~/Welcome/Default.aspx");

                }
                catch (Exception ex)
                {
                }
            }
            else
            {
            }
        }
        else
        {
            ToSaveImageName = "No";
            sImageFileExtension = "Image";
        }

    }

}

