//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PassangerCode.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Ticket
    {
        public int TicketID { get; set; }
        public string Destination { get; set; }
        public System.DateTime Time { get; set; }
        public string Meal { get; set; }
        public string Class { get; set; }
        public int PassangerID { get; set; }
        public string TicketCode { get; set; }
    
        public virtual Passanger Passanger { get; set; }
    }
}
