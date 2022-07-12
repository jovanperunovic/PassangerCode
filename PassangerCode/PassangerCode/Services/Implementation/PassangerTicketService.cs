using PassangerCode.Models;
using PassangerCode.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PassangerCode.Services.Implementation
{
    public class PassangerTicketService : IPassangerTicketService, ICodeGeneratorService
    {
        public string GenerateCode(PassangerTicketViewModel data)
        {
            string ticketCode = "";
            if (data.Time)
            {
                switch (data.Destination)
                {
                    case "UK Destinations":
                        ticketCode += "A";
                        break;
                    case "Flights to Europe":
                        ticketCode += "B";
                        break;
                    case "Asian Destinations":
                        ticketCode += "C";
                        break;
                    case "American Destinations":
                        ticketCode += "D";
                        break;
                    default:
                        break;
                }
            }
            else
            {
                switch (data.Destination)
                {
                    case "UK Destinations":
                        ticketCode += "a";
                        break;
                    case "Flights to Europe":
                        ticketCode += "b";
                        break;
                    case "Asian Destinations":
                        ticketCode += "c";
                        break;
                    case "American Destinations":
                        ticketCode += "d";
                        break;
                    default:
                        break;
                }
            }

            if (data.Age >= 12)
            {
                if (data.Gender)
                    ticketCode += "X";
                else
                    ticketCode += "Y";

                switch (data.Meal)
                {
                    case "European meal":
                        ticketCode += "G";
                        break;
                    case "Asian Meal":
                        ticketCode += "H";
                        break;
                    case "Vegetarian Meal":
                        ticketCode += "K";
                        break;
                    default:
                        break;
                }
            }
            else
            {
                if (data.Gender)
                    ticketCode += "x";
                else
                    ticketCode += "y";

                switch (data.Meal)
                {
                    case "European meal":
                        ticketCode += "g";
                        break;
                    case "Asian Meal":
                        ticketCode += "h";
                        break;
                    case "Vegetarian Meal":
                        ticketCode += "k";
                        break;
                    default:
                        break;
                }
            }


            switch (data.Class)
            {
                case "First Class":
                    ticketCode += "P";
                    break;
                case "Business Class":
                    ticketCode += "Q";
                    break;
                case "Economy Class":
                    ticketCode += "R";
                    break;
                default:
                    break;
            }

            if (data.Origin)
                ticketCode = "-EU" + ticketCode;
            else
                ticketCode = "-ZZ" + ticketCode;

            return ticketCode;
        }

        public string GenerateTicket(PassangerTicketViewModel data)
        {
            string ticketCode = "";
            using (var db = new DataModelEntities())
            {
                Passanger passanger = new Passanger()
                {
                    FirstName = data.FirstName,
                    LastName = data.LastName,
                    Email = data.Email,
                    Gender = data.Gender,
                    Age = data.Age,
                    Origin = data.Origin,
                };

                db.Passanger.Add(passanger);
                db.SaveChanges();

                ticketCode = GenerateCode(data);

                Ticket ticket = new Ticket()
                {
                    Destination = data.Destination,
                    Time = DateTime.Now,
                    Meal = data.Meal,
                    Class = data.Class,
                    PassangerID = passanger.PassangerID,
                    TicketCode = ticketCode
                };

                db.Ticket.Add(ticket);
                db.SaveChanges();

            }
            return ticketCode;
        }
    }
}