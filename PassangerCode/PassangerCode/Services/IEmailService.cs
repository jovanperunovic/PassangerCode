using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PassangerCode.Services
{
    public interface IEmailService
    {
        void SendEmail(string receiver, string subject, string message);
    }
}