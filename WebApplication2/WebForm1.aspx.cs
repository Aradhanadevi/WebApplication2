using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)  
        {  
            MultiView1.ActiveViewIndex = 0;  
        }  
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //FirstNameOutput.Text = FirstNameInput.Text;
            //LastNameOutput.Text = LastNameInput.Text;
            //EnrollmentOutput.Text = EnrollmentInput.Text;
            //DateOfBirthOutput.Text = "You're Birthday is on: " + DateOfBirthInput.SelectedDate.ToString();
            if ((ResultInput.PostedFile != null) && (ResultInput.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(ResultInput.PostedFile.FileName);
                string SaveLocation = Server.MapPath("upload") + "\\" + fn;
                try
                {
                    ResultInput.PostedFile.SaveAs(SaveLocation);
                    ResultOutput.Text = "The result has been uploaded.";
                }
                catch (Exception ex)
                { ResultOutput.Text = "Error: " + ex.Message; }
            }
            else { ResultOutput.Text = "Please select a file to upload."; }

            if (ResultInput.HasFile)
            {
                // Save the uploaded file (adjust the path as needed)
                ResultInput.SaveAs(Server.MapPath("~/Try/" + ResultInput.FileName));

                // Display the filename
                ResultOutput.Text = "Uploaded file: " + ResultInput.FileName;
            }

        }
            

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            FirstNameOutput.Text = FirstNameInput.Text;
            LastNameOutput.Text = LastNameInput.Text;
            EnrollmentOutput.Text = EnrollmentInput.Text;
            DateOfBirthOutput.Text = "You're Birthday is on: " + DateOfBirthInput.SelectedDate.ToString();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }


        protected void Wizard1_FinishButtonClick1(object sender, WizardNavigationEventArgs e)
        {
            DeptOutput.Text = DeptInput.Text;
           
            if (GenderMaleInput.Checked)
            {
                GenderOutput.Text = GenderMaleInput.Text;
            }
            if (GenderFemaleInput.Checked)
            {
                GenderOutput.Text += GenderFemaleInput.Text;
            }
            if (DNTInput.Checked)
            {
                SubjectOutput.Text = "The subject you selcted: " + DNTInput.Text + " ";
            }
            if (PAInput.Checked)
            {
                SubjectOutput.Text += " " + PAInput.Text + " ";
            }
            if (CSInput.Checked)
            {
                SubjectOutput.Text += " " + CSInput.Text + " ";
                //ResultOutput.Text = ResultInput.Text;
               

                CityOutput.Text = CityInput.Text;
            }
        }
    }
}
    