using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ContactManagement.User
{
    public partial class forgot
    {
        public int Id { get; set; }
        public string Uid { get; set; }
        public string Email { get; set; }
        public DateTime? ReqDateTime { get; set; }
    }
}
