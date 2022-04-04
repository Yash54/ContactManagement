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

        public bool Removecontact(int id)
        {
            contact c = m1.contact.Where(ctmp => ctmp.id == id).FirstOrDefault();
            var cr = m1.contact.Remove(c);
            m1.SaveChanges();
            return true;
        }

        public bool Updatecontact(contact c)
        {
            contact c1 = m1.contact.Where(ctmp => ctmp.id == c.id).FirstOrDefault();
            if (c1 == null)
            {
                return false;
            }
            c1.Firstname = c.Firstname;
            c1.Lastname = c.Lastname;
            c1.Email = c.Email;
            c1.Label = c.Label;
            c1.ContactType = c.ContactType;
            c1.Mobileno = c.Mobileno;
            m1.SaveChanges();
            return true;
        }
    }
}
