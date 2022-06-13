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
                UserNameTextBox.ReadOnly = true;
                AddressTextBox.ReadOnly = true;
                PhoneNumberTextBox.ReadOnly = true;
                EmailTextBox.ReadOnly = true;
                PasswordTextBox.ReadOnly = true;
                FeedbackTextBox.ReadOnly = true;
                BusinessArrivalDropdown.Enabled = false;
                foreach(ListItem checkBox in GardeningChoicesCheckboxes.Items) {
                    checkBox.Enabled = false;
                }
                foreach (ListItem radio in ContactPreferenceRadioButtons.Items)
                {
                    radio.Enabled = false;
                }
            }
        }   

        protected void SubmitForm_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine(PhoneNumberTextBox.Text);
        }
    }
}