﻿using System;
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
                // hide form and show success text
                FormDiv.Visible = false;
                FormResults.Text = "<br />" + "Here are your results: " + "<br />" +
                  "User name: " + UserNameTextBox.Text + "<br />" +
                  "Address: " + AddressLine1TextBox.Text + ", " +
                    AddressLine2TextBox.Text + ", " +
                    CityTextBox.Text + ", " +
                    StateDropDownList.SelectedValue +
                    ZipCodeTextBox.Text + "<br />" +
                  "Date visited: " + DateVisitedTextBox.Text + "<br />" +
                  "Phone number: " + PhoneNumberTextBox.Text + "<br />" +
                  "Email: " + EmailTextBox.Text + "<br />" +
                  //"Gardening choices: " + PhoneNumberTextBox.Text + "<br />" +
                  "Contact preference: " + ContactPreferenceRadioButtons.SelectedValue + "<br />" +
                  "Feedback given: " + FeedbackTextBox.Text + "<br />";
            }
        }

        protected void SubmitForm_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                ValidMessageLabel.Text = "Form Successfully Submitted!";
            }
            else
            {
                ValidMessageLabel.Text = "Form is NOT valid.";
            }
        }

        protected void GardeningChoices_Validate(object sender, ServerValidateEventArgs e)
        {
            bool isValid = false;
            foreach (ListItem checkBox in GardeningChoicesCheckboxes.Items)
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