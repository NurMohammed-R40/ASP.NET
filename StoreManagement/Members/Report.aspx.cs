using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StoreManagement.Models;

namespace StoreManagement.Members
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_Init(object sender, EventArgs e)
        {
            if (Session["report"] != null)
            {
                CrystalReportViewer1.ReportSource = (Purchase_Report)Session["report"];
            }
            else if (Session["report1"] != null)
            {
                CrystalReportViewer1.ReportSource = (Sales_Report)Session["report1"];
            }
        }

        protected void btnShowPurchase_Click(object sender, EventArgs e)
        {
            Models.ReportTableAdapters.DataTable1TableAdapter da = new Models.ReportTableAdapters.DataTable1TableAdapter();
            Models.Report ds = new Models.Report();
            Models.Report.DataTable1DataTable dt = (Models.Report.DataTable1DataTable)ds.Tables["DataTable1"];
            da.Fill(dt);

            Purchase_Report rpt = new Purchase_Report();
            rpt.SetDataSource(ds);
            CrystalReportViewer1.ReportSource = rpt;
            Session.Add("report", rpt);

        }

        protected void btnShowSales_Click(object sender, EventArgs e)
        {
            Models.ReportTableAdapters.DataTable2TableAdapter da = new Models.ReportTableAdapters.DataTable2TableAdapter();
            Models.Report ds = new Models.Report();
            Models.Report.DataTable2DataTable dt = (Models.Report.DataTable2DataTable)ds.Tables["DataTable2"];
            da.Fill(dt);

            Sales_Report rpt = new Sales_Report();
            rpt.SetDataSource(ds);
            CrystalReportViewer1.ReportSource = rpt;
            Session.Add("report1", rpt);

        }
    }
}