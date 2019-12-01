using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StoreManagement.Models;


namespace StoreManagement
{
    /// <summary>
    /// Summary description for DbImageHandler
    /// </summary>
    public class DbImageHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string id = context.Request.QueryString["id"];
            ProductDbContext db = new ProductDbContext();
            var pr = db.tblProducts.AsEnumerable().First(p => p.Product_ID == int.Parse(id));
            context.Response.BinaryWrite(pr.Picture);

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}