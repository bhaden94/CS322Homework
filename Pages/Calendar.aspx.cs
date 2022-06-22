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
                try
                {
                    e.Cell.Controls.Add(new LiteralControl("<br />Closed"));
                } catch (HttpException ex)
                {
                    Trace.Warn(ex.Message);
                }
                e.Cell.BackColor = System.Drawing.Color.Black;
            }

            // WWII D-Day
            // There are other more notable holidays like Juneteenth and summer solstice. 
            // However, Juneteenth falls on a Sunday and we already have styling on all Sundays.
            // Summer solstice is a dynamic date so we would also need to set this for each year.
            // The easier one for June is a fixed date, not on a Sunday this year.
            if (e.Day.Date.Day == 6 && e.Day.Date.Month == (int)Month.June)
            {
                try
                {
                    e.Cell.Style.Add("background-image", "url(../Images/d-day.jpg)");
                    e.Cell.Style.Add("background-size", "contain");
                    e.Cell.Style.Add("background-repeat", "no-repeat");
                    e.Cell.Style.Add("background-position", "center");
                }
                catch (HttpException ex)
                {
                    Trace.Warn(ex.Message);
                }
            }
            // Independance day
            if (e.Day.Date.Day == 4 && e.Day.Date.Month == (int)Month.July)
            {
                HyperLink myLink = new HyperLink();
                myLink.NavigateUrl = "https://www.history.com/topics/holidays/july-4th";
                myLink.Text = "Independance Day History";
                myLink.Target = "_blank";
                try
                {
                    e.Cell.Controls.Add(new LiteralControl("<br />"));
                    e.Cell.Controls.Add(myLink);
                } catch (HttpException ex)
                {
                    Trace.Warn(ex.Message);
                } catch (ArgumentNullException ex)
                {
                    Trace.Warn("Hyperlink is null");
                    Trace.Warn(ex.Message);
                }
                
            }

            // Gardening bonanza on 16th of current month
            if (DateTime.Now.Month == e.Day.Date.Month && e.Day.Date.Day == 16)
            {
                try
                {
                    e.Cell.Controls.Add(new LiteralControl("<br />"));
                    e.Cell.Controls.Add(new LiteralControl("Gardening bonanza! Come join us for huge discounts and a fun time."));
                    e.Cell.Style.Add("font-size", "12px");
                } catch (HttpException ex)
                {
                    Trace.Warn(ex.Message);
                }
            }
        }

        protected void MyCalendar_SelectionChanged(object sender, EventArgs e)
        {
            DateTime selectedDate = MyCalendar.SelectedDates[MyCalendar.SelectedDates.Count - 1].Date;
            Message.Text = "Selected Date: ";
            Message.Text += selectedDate.ToShortDateString();
            if (selectedDate.Day == 13)
            {
                Message.Text += "<br /> Sorry, we are closed the 13th of every month.";
            }
            else if (selectedDate.DayOfWeek == DayOfWeek.Saturday)
            {
                // Saturday's have gardening lessons
                // 4 different lessons to choose from
                // customers can call to schedule
                // future addition could be scheduling on our site
                string[] gardeningLessons = { 
                    "How to prepare your soil.",
                    "How to use common gardening tools.",
                    "How much water to give specific plants and vegetables.",
                    "How to maintain your garden."
                };
                Message.Text += "<br /> Saturday lessons offered: ";
                for (int i = 0; i < gardeningLessons.Length; i++)
                {
                    Message.Text += "<br /> &emsp;" + (i + 1) + " - " + gardeningLessons[i];
                }
                Message.Text += "<br /> Please call 854-2GA-RDEN (854-242-7336) to schedule.";
            }
            else
            {
                // During the week have a simple message to come look at their gardening supplies
                Message.Text += "<br /> Come check out our gardening supplies!";
            }
        }
    }
}