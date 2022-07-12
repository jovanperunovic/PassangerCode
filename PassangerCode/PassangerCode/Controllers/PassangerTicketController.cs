using PassangerCode.Models;
using PassangerCode.Services;
using PassangerCode.Services.Implementation;
using PassangerCode.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace PassangerCode.Controllers
{
    public class PassangerTicketController : Controller
    {
        private readonly IEmailService _emailService;
        private readonly IPassangerTicketService _passangerTicketService;

        public PassangerTicketController(IEmailService emailService, IPassangerTicketService passangerTicketService)
        {
            _emailService = emailService;
            _passangerTicketService = passangerTicketService;
        }
        // GET: PassangerTicket
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

        // POST
        [HttpPost]
        public ActionResult Index(PassangerTicketViewModel data)
        {
            string ticketCode = _passangerTicketService.GenerateTicket(data);      
            _emailService.SendEmail(data.Email, "TicketCode", ticketCode);
            return RedirectToAction("QRCode", new { ticketCode = ticketCode });
        }

        public ActionResult QRCode(string ticketCode)
        {
            ViewBag.link = "https://api.qrserver.com/v1/create-qr-code/?data=" + ticketCode + "&amp;size=100x100";
            return View();
        }
    }
}