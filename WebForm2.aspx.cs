using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tutorials_website
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label2.Text = "The selected date is: " + Calendar1.SelectedDate.ToString();
            Label2.Text = "The selected day is: " + Calendar1.SelectedDate.DayOfWeek.ToString();

        }
    }
        
}