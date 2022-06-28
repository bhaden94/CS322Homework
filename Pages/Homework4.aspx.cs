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

        protected void UpdateDynamicPanel(object sender, EventArgs e)
        {
            //System.Threading.Thread.Sleep(TimeSpan.FromSeconds(2));
            string[] labels = { "Vegetable Garden", "Flower Gardens", "Herb Gardens" };
            string[] images = { "../Images/hw4-veg-garden.jpg", "../Images/hw4-flower-garden.jpg", "../Images/hw4-herb-garden.jpg" };

            if (UpdatePanelLabel.Text.Equals(labels[0]))
            {
                UpdatePanelLabel.Text = labels[1];
                UpdatePanelImage.ImageUrl = images[1];
            }
            else if (UpdatePanelLabel.Text.Equals(labels[1]))
            {
                UpdatePanelLabel.Text = labels[2];
                UpdatePanelImage.ImageUrl = images[2];
            }
            else if (UpdatePanelLabel.Text.Equals(labels[2]))
            {
                UpdatePanelLabel.Text = labels[0];
                UpdatePanelImage.ImageUrl = images[0];
            }
            else
            {
                UpdatePanelLabel.Text = labels[0];
                UpdatePanelImage.ImageUrl = images[0];
            }
        }
    }
}