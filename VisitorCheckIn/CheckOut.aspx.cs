using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorCheckIn
{
    public partial class CheckOut : System.Web.UI.Page
    {
        VisitorInfoEntities1 db = new VisitorInfoEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var data = (from t in db.visitors
                            where t.status == "Signed In"
                            select new { ID = t.Id, Firstname = t.firstname, lastname = t.lastname, Type_of_id = t.idtype, id_num = t.visitorId }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();

            }
        }
        

        protected void btnIDSearch_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtSearch.Text))
            {
                // string id = txtvisitor.Text;
                int id = int.Parse(txtSearch.Text);
                // int id = int.Parse(txtvisitor.Text);
                var data = (from t in db.visitors
                            where t.Id == id && t.status == "Signed In"
                            select new { Firstname = t.firstname, lastname = t.lastname, Type_of_id = t.idtype, id_num = t.visitorId }).ToList();

                GridView1.DataSource = data;
                GridView1.DataBind();

            }
            else
            {
                var data = (from t in db.visitors
                            where t.status == "Signed In"
                            select new { ID = t.Id, Firstname = t.firstname, lastname = t.lastname, Type_of_id = t.idtype, id_num = t.visitorId }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
        }

       

        protected void b1_Click(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            GridViewRow r = (GridViewRow)b.NamingContainer;
            /// string idnum = r.Cells[1].Text;
            int id = int.Parse(r.Cells[1].Text);

            var olddata = (from t in db.visitors where t.Id == id && t.status == "Signed In" select t).SingleOrDefault();
            olddata.status = "Signed out";
            // olddata.ID_Num = idnum;
            olddata.checkout = DateTime.Now;
            var res = db.SaveChanges();
            if (res > 0)
                Response.Write("Status Updated");
            GridView1.DataBind();
        }

        protected void btnNameSearch_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtSearch.Text))
            {
                string name = txtSearch.Text;
                var data = (from t in db.visitors
                            where t.firstname == name && t.status == "Signed In"
                            select new { Firstname = t.firstname, lastname = t.lastname, Type_of_id = t.idtype, id_num = t.visitorId }).ToList();

                GridView1.DataSource = data;
                GridView1.DataBind();

            }
            else
            {
                var data = (from t in db.visitors
                            where t.status == "Signed In"
                            select new { ID = t.Id, Firstname = t.firstname, lastname = t.lastname, Type_of_id = t.idtype, id_num = t.visitorId }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();

            }
        }
    }
}







