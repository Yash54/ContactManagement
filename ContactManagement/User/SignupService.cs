using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;

namespace ContactManagement.User
{
    public class SignupService : ISignup
    {
        Model1 m1 = new Model1();
        public bool Signup(user u)
        {
            if (m1.users.Where(se => se.Username == u.Username || se.Email == u.Email).FirstOrDefault<user>() != null)
            {
                return false;
            }
            m1.users.Add(u);
            m1.SaveChanges();
            return true;
        }
    }
}
