using PassangerCode.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PassangerCode.Services
{
    public interface IPassangerTicketService
    {
        string GenerateTicket(PassangerTicketViewModel data);
    }
}