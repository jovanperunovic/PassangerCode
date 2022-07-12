using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace PassangerCode.Services.Implementation
{
    public class EmailService : IEmailService
    {
        public void SendEmail(string receiver, string subject, string message)
        {
            return; //This action is only for example purpose because I did't have proper email to deliver and test action
            try
            {
                var senderEmail = new MailAddress("test@tes.gmail", "Test");
                var receiverEmail = new MailAddress(receiver, "Receiver");
                var password = "**********";
                var sub = subject;
                var body = message;
                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(senderEmail.Address, password)
                };
                using (var mess = new MailMessage(senderEmail, receiverEmail)
                {
                    Subject = subject,
                    Body = body
                })
                {
                    smtp.Send(mess);
                }
            }
            finally
            {

            }
        }
    }
}