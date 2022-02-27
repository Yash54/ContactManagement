using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ContactManagement.User
{
    public class ResetService : IReset
    {
        Model1 m1 = new Model1();
        public bool Reset(string token, string pass)
        {
            forgot fo = m1.forgots.Where(se => se.Uid == token).FirstOrDefault<forgot>();
            if (fo == null)
            {
                return false;
            }
            user u1 = m1.users.Where(us => us.Email == fo.Email).FirstOrDefault<user>();
            u1.Password = pass;
            m1.SaveChanges();
            return true;
        }
    }
}
