//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace StoreManagement.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblProduct
    {
        public int Product_ID { get; set; }
        public string Product_Name { get; set; }
        public Nullable<int> Available_Quantity { get; set; }
        public decimal Selling_Price { get; set; }
        public byte[] Picture { get; set; }
        public string Product_Description { get; set; }
    }
}
