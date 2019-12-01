using StoreManagement.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StoreManagement
{
    public partial class myControl : System.Web.UI.UserControl
    {
        ProductDbContext db = new ProductDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            tblProduct p = new tblProduct { Product_Name = txtProductName.Text, Selling_Price = decimal.Parse(txtSellingPrice.Text), Product_Description = txtDescription.Text, Available_Quantity = 0 };

            if (pPicture.HasFile)
            {
                p.Picture = pPicture.FileBytes;

                if (pPicture.PostedFile.ContentLength > 0)
                {
                    string path = Server.MapPath("~/Images/") + pPicture.PostedFile.FileName;
                    pPicture.PostedFile.SaveAs(path);
                }

            }

            db.tblProducts.Add(p);
            db.SaveChanges();
            txtProductName.Text = "";
            txtSellingPrice.Text = "";
            txtDescription.Text = "";
            Response.Redirect("Available_Product.aspx");

        }
        private System.Drawing.Image FormByteArray(byte[] imgBytes)
        {
            MemoryStream ms = new MemoryStream();
            ms.Write(imgBytes, 0, imgBytes.Length);
            System.Drawing.Image img = System.Drawing.Image.FromStream(ms);
            return img;
        }

    }
}