﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace FineUI.Examples.iframe
{
    public partial class parent_postback_top2 : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            labResult.Text = "Page load time: " + DateTime.Now.ToLongTimeString();
        }

        protected void Window1_Close(object sender, WindowCloseEventArgs e)
        {
           
        }
    }
}