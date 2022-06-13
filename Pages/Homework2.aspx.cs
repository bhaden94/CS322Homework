using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BradyHaden.Pages
{
    public partial class Homework2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                
            }
        }   

        protected void SubmitForm_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                ValidMessageLabel.Text = "Form is valid.";
                UserNameTextBox.ReadOnly = true;
                AddressLine1TextBox.ReadOnly = true;
                AddressLine2TextBox.ReadOnly = true;
                CityTextBox.ReadOnly = true;
                StateDropDownList.Enabled = false;
                ZipCodeTextBox.ReadOnly = true;
                DateVisitedTextBox.ReadOnly = true;
                PhoneNumberTextBox.ReadOnly = true;
                EmailTextBox.ReadOnly = true;
                PasswordTextBox.ReadOnly = true;
                FeedbackTextBox.ReadOnly = true;
                BusinessArrivalDropdown.Enabled = false;
                foreach (ListItem checkBox in GardeningChoicesCheckboxes.Items)
                {
                    checkBox.Enabled = false;
                }
                foreach (ListItem radio in ContactPreferenceRadioButtons.Items)
                {
                    radio.Enabled = false;
                }
            } else
            {
                ValidMessageLabel.Text = "Form is NOT valid.";
            }
        }

        protected void GardeningChoices_Validate(object sender, ServerValidateEventArgs e)
        {
            bool isValid = false;
            foreach(ListItem checkBox in GardeningChoicesCheckboxes.Items)
            {
                if (checkBox.Selected)
                {
                    isValid = true;
                }
            }
            e.IsValid = isValid;
        }

        protected void UserNameLength_Validate(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = UserNameTextBox.Text.Length >= 6;
        }

        protected void DateVisited_Validate(object sender, ServerValidateEventArgs e)
        {
            DateTime dateVisited = Convert.ToDateTime(DateVisitedTextBox.Text).ToUniversalTime();
            DateTime currentDate = DateTime.UtcNow.Date;
            e.IsValid = dateVisited <= currentDate;
        }
    }
}