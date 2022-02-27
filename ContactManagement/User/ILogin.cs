using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ContactManagement.User
{
    [ServiceContract]
    public interface ILogin
    {
        [OperationContract]
        string Login(string uname, string pass);
    }
    
    
}
