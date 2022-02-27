using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace ContactManagement.User
{
    public class ForgotService:IForgot
    {
        Model1 m1 = new Model1();
        public string Forgot(string email)
        {
            user u1 = m1.users.Where(se => se.Email == email).FirstOrDefault<user>();
            if (u1 != null)
            {
                try
                {
                    string myGUID = Guid.NewGuid().ToString();
                    forgot f = new forgot();
                    f.Email = email;
                    f.Uid = myGUID;
                    //f.ReqDateTime = new System.DateTime();
                    m1.forgots.Add(f);
                    m1.SaveChanges();

                    string tomail = email;
                    string mailbody = "Hi, Click this link to reset you password https://localhost:44313/user/reset.aspx?Uid=" + myGUID;
                    MailMessage Resmail = new MailMessage("fineartgallery06@gmail.com", tomail);
                    Resmail.Body = mailbody;
                    Resmail.IsBodyHtml = true;
                    Resmail.Subject = "Reset Password";
                    Resmail.Priority = MailPriority.High;
                    SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                    SMTP.DeliveryMethod = SmtpDeliveryMethod.Network;
                    SMTP.UseDefaultCredentials = false;
                    SMTP.Credentials = new NetworkCredential()
                    {
                        UserName = "fineartgallery06@gmail.com",
                        Password = "Artgallery#1221"
                    };
                    SMTP.EnableSsl = true;
                    SMTP.Send(Resmail);
                    return "Email Sent to reset password";
                    //Response.Redirect("login.aspx");
                }
                catch (Exception)
                {
                    return "Can't send email please try again";
                    //Response.Redirect("home.aspx");
                }
            }
            return "Email dose not exist";
        }
    }
}
