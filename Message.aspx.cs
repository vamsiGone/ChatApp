using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRChat
{
    public partial class Message : System.Web.UI.Page
    {
        public string UserName = "admin";
        ConnClass ConnC = new ConnClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                UserName = Session["UserName"].ToString();
               // GetUserImage(UserName);
            }
            else
                Response.Redirect("Login.aspx");

            //this.Header.DataBind();
        }
    }
}