using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration; 

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString); 
        protected void Page_Load(object sender, EventArgs e)
        {
            rptComments.DataBind();


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Insert Into dbo.[MessageData] (userName, [message]) values (@user, @message)";
            cmd.Parameters.AddWithValue("@user", txtUserName.Text);
            cmd.Parameters.AddWithValue("@message", txtMessage.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            rptComments.DataBind();

        }
    }
}