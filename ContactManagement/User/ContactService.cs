using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;

namespace ContactManagement.User
{
    public class ContactService : IContact
    {
        Model1 m1 = new Model1();
        public bool Contact(contact c)
        {
            if (m1.contact.Where(se => (se.Email == c.Email || se.Mobileno == c.Mobileno) && se.Username == c.Username).FirstOrDefault<contact>() != null)
            {
                return false;
            }
            m1.contact.Add(c);
            m1.SaveChanges();
            return true;

        }
    }
}
