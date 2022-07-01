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
            FormResults.Visible = false;
        }

        protected void UpdateDynamicPanel(object sender, EventArgs e)
        {
            //System.Threading.Thread.Sleep(TimeSpan.FromSeconds(2));
            string[] labels = { "Vegetable Garden", "Flower Garden", "Herb Garden" };
            string[] images = { "../Images/hw4-veg-garden.jpg", "../Images/hw4-flower-garden.jpg", "../Images/hw4-herb-garden.jpg" };
            string[] listHeaders = { "Plants in a Vegetable Garden", "Plants in a Flower Garden", "Plants in a Herb Garden" };
            ListItem[][] listItems = {
                new ListItem[]{ new ListItem("Tomatoes"), new ListItem("Lettuce"), new ListItem("Peppers"), new ListItem("Potatoes") },
                new ListItem[]{ new ListItem("Roses"), new ListItem("Tulips"), new ListItem("Azeleas"), new ListItem("Sunflowers") },
                new ListItem[]{ new ListItem("Parsley"), new ListItem("Rosemary"), new ListItem("Basil"), new ListItem("Chives") } 
            };

            if (UpdatePanelHeader.Text.Equals(labels[0]))
            {
                UpdatePanelHeader.Text = labels[1];
                UpdatePanelImage.ImageUrl = images[1];
                GardenListTitle.InnerText = listHeaders[1];
                GardenList.Items.Clear();
                GardenList.Items.AddRange(listItems[1]);
            }
            else if (UpdatePanelHeader.Text.Equals(labels[1]))
            {
                UpdatePanelHeader.Text = labels[2];
                UpdatePanelImage.ImageUrl = images[2];
                GardenListTitle.InnerText = listHeaders[2];
                GardenList.Items.Clear();
                GardenList.Items.AddRange(listItems[2]);
            }
            else if (UpdatePanelHeader.Text.Equals(labels[2]))
            {
                UpdatePanelHeader.Text = labels[0];
                UpdatePanelImage.ImageUrl = images[0];
                GardenListTitle.InnerText = listHeaders[0];
                GardenList.Items.Clear();
                GardenList.Items.AddRange(listItems[0]);
            }
            else
            {
                UpdatePanelHeader.Text = labels[0];
                UpdatePanelImage.ImageUrl = images[0];
                GardenListTitle.InnerText = listHeaders[0];
                GardenList.Items.Clear();
                GardenList.Items.AddRange(listItems[0]);
            }
        }

        protected void Hw4ImageButton_Click(object sender, EventArgs e)
        {
            // validate email is there

            // keep form and post error if not

            // else get rid of form and post success
            FormDiv.Visible = false;
            EmailListResults.Text = "You are added to the email list!";
            //EmailListResults.Visible = true;
            EmailListResults.CssClass = "alert alert-success";
            FormResults.Visible = true;
        }
    }
}