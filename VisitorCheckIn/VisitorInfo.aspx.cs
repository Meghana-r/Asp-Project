using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.ComponentModel.DataAnnotations;
namespace VisitorCheckIn
{
    public partial class VisitorInfo : System.Web.UI.Page
    {
        VisitorInfoEntities1 db = new VisitorInfoEntities1();
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtID_TextChanged(object sender, EventArgs e)
        {
        
        }

        protected void ddlID_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string first_name = txtFirstName.Text;
                string last_name = txtLastName.Text;
                string company = txtCompany.Text;
               string visiting = txtVisiting.Text;
                string idtype = ddlID.SelectedItem.ToString();
                string visitorId =txtID.Text;
                string contactnum = txtContact.Text;
                string purpose = txtPurpose.Text;
                string check = "Signed In";
                DateTime check_in = DateTime.Now;
                DateTime check_out = DateTime.Now;
                visitor vi = new visitor();
                vi.firstname = first_name;
                vi.lastname = last_name;
                vi.company = company;
                vi.visiting = visiting;
                vi.idtype = idtype;
                vi.status = check;

                vi.checkin = check_in;
                vi.checkout = check_out;
                vi.visitorId = int.Parse(visitorId);
                vi.contactnum = contactnum;
                vi.purpose = purpose;
               

                db.visitors.Add(vi);
                var res = db.SaveChanges();
                if (res > 0)
                    Response.Write("Data inserted");
                db.SaveChanges();
            }
            catch (DbEntityValidationException ex)
            {
                foreach (var entityValidationErrors in ex.EntityValidationErrors)
                {
                    foreach (var validationError in entityValidationErrors.ValidationErrors)
                    {
                        Response.Write("Property: " + validationError.PropertyName + " Error: " + validationError.ErrorMessage);
                    }
                }
            }

           
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HOME.aspx");
        }
    }
    }
