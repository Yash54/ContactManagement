using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ContactManagement.User
{
    [ServiceContract]
    public interface IForgot
    {
        [OperationContract]
        string Forgot(string email);
    }
}
