﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Com.UMall.Presentation.Order
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
                //gridDemo.DataSource = GetDataTable2();
                //gridDemo.DataBind();
            }
        }

    }
}