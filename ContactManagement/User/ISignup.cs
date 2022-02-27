using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;
using System.Runtime.Serialization;

namespace ContactManagement.User
{
    [ServiceContract]
    public interface ISignup
    {
        [OperationContract]
        bool Signup(user u);
    }

    [DataContract]
    public class user
    {
        public int id { get; set; }
        string username = "user1";
        string password = "user1@123";
        string email = "user1@gmail.com";
        int mobileno = 1234567890;

        public user() { }
        public user(string uname,string pass,string email,int mobile)
        {
            this.username = uname;
            this.password = pass;
            this.email = email;
            this.mobileno = mobile;
        }

        [DataMember]
        public string Username
        {
            get { return username; }
            set { username = value; }
        }
        [DataMember]
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        [DataMember]
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        [DataMember]
        public int Mobileno
        {
            get { return mobileno; }
            set { mobileno = value; }
        }
    }

}
