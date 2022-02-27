using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ContactManagement.User
{
    public class LoginService :ILogin
    {
        Model1 m1 = new Model1();
        public string Login(string uname, string pass)
        {
            user u1 = m1.users.Where(se => se.Username == uname || se.Email == uname).FirstOrDefault<user>();
            if (u1 != null)
            {
                if (u1.Password == pass && u1.Username == uname)
                {
                    return "Login Success";
                }
                return "Invalid Password";
            }
            return "User not exist please signup";
        }
    }
}
