using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BradyHaden.Pages
{
    // Enum to keep track of months
    public enum Month
    {
        January = 1,
        February = 2,
        March = 3,
        April = 4,
        May = 5,
        June = 6,
        July = 7,
        August = 8,
        September = 9,
        October = 10,
        November = 11,
        December = 12
    }

    public partial class Calendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MyCalendar_DayRender(object sender, DayRenderEventArgs e)
        {
            // All Sundays
            if (e.Day.Date.DayOfWeek == DayOfWeek.Sunday)
            {
                e.Cell.Controls.Add(new LiteralControl("<br />Closed"));
                e.Cell.BackColor = System.Drawing.Color.Black;
            }

            // WWII D-Day
            // There are other more notable holidays like Juneteenth and summer solstice. 
            // However, Juneteenth falls on a Sunday and we already have styling on all Sundays.
            // Summer solstice is a dynamic date so we would also need to set this for each year.
            // The easier one for June is a fixed date, not on a Sunday this year.
            if (e.Day.Date.Day == 6 && e.Day.Date.Month == (int)Month.June)
            {
                e.Cell.Style.Add("background-image", "url(../Images/d-day.jpg)");
                e.Cell.Style.Add("background-size", "contain");
                e.Cell.Style.Add("background-repeat", "no-repeat");
                e.Cell.Style.Add("background-position", "center");
            }
            // Independance day
            if (e.Day.Date.Day == 4 && e.Day.Date.Month == (int)Month.July)
            {
                HyperLink myLink = new HyperLink();
                myLink.NavigateUrl = "https://www.history.com/topics/holidays/july-4th";
                myLink.Text = "Independance Day History";
                myLink.Target = "_blank";
                e.Cell.Controls.Add(new LiteralControl("<br />"));
                e.Cell.Controls.Add(myLink);
            }

            // Gardening bonanza on 16th of current month
            if (DateTime.Now.Month == e.Day.Date.Month && e.Day.Date.Day == 16)
            {
                e.Cell.Controls.Add(new LiteralControl("<br />"));
                e.Cell.Controls.Add(new LiteralControl("Gardening bonanza! Come join us for huge discounts and a fun time."));
                e.Cell.Style.Add("font-size", "12px");
            }
        }
    }
}