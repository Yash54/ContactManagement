using ContactManagement.User;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ContactManagement.User
{
    class SignupService : ISignup
    {
        Model1 m1 = new Model1();
        public bool Signup(user u)
        {
            if (m1.Users.Where(se => se.Username == u.Username || se.Email == u.Email).FirstOrDefault<user>() != null)
            {
                return false;
            }
            m1.Users.Add(u);
            m1.SaveChanges();
            return true;
        }
    }
}
