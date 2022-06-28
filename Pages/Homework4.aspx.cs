using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BradyHaden.Pages
{
    public partial class Homework4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdRefreshTime_Click(object sender, EventArgs e)
        {
            //System.Threading.Thread.Sleep(TimeSpan.FromSeconds(2));
            lblTime.Text = DateTime.Now.ToLongTimeString();
        }

        protected void UpdateDynamicPanel(object sender, EventArgs e)
        {
            //System.Threading.Thread.Sleep(TimeSpan.FromSeconds(2));
            string[] labels = { "PanelLabel", "Label2", "Label3" };
            if (PanelLabel.Text.Equals(labels[0])) {
                PanelLabel.Text = labels[1];
            } else if (PanelLabel.Text.Equals(labels[1])) {
                PanelLabel.Text = labels[2];
            } else if (PanelLabel.Text.Equals(labels[2])) {
                PanelLabel.Text = labels[0];
            } else
            {
                // something is wrong
                PanelLabel.Text = labels[0];
            }
        }
    }
}