using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace PassangerCode.ViewModels
{
    public class PassangerTicketViewModel
    {
        //Passanger
        public int PassangerID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        [DisplayName("Email")]
        [Required(ErrorMessage = "Email is required")]
        [DataType(DataType.EmailAddress)]
        [EmailAddress]
        public string Email { get; set; }
        [DisplayName("Gender")]
        [Required(ErrorMessage = "Gender is required")]
        public bool Gender { get; set; }
        [DisplayName("Age")]
        [Required(ErrorMessage = "Age is required")]
        [Range(0, 200, ErrorMessage = "Value for {0} must be between {1} and {2}.")]
        public int Age { get; set; }
        [DisplayName("Origin")]
        [Required(ErrorMessage = "Origin is required")]
        public bool Origin { get; set; }

        //Ticket
        public int TicketID { get; set; }
        [DisplayName("Destination")]
        [Required(ErrorMessage = "Destination is required")]
        public string Destination { get; set; }
        [DisplayName("Flight time")]
        [Required(ErrorMessage = "Flight time is required")]
        public bool Time { get; set; }
        [DisplayName("Meal on flight")]
        [Required(ErrorMessage = "Meal on flight is required")]
        public string Meal { get; set; }
        [DisplayName("Class on flight")]
        [Required(ErrorMessage = "Class on flight is required")]
        public string Class { get; set; }

        [DisplayName("Ticket Code")]
        public string TicketCode { get; set; }
    }
}