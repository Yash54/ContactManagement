using ContactManagement.User;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ContactHost
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        ServiceHost shlogin = null;
        ServiceHost shsignup = null;
        ServiceHost shforgot = null;
        ServiceHost shreset = null;
        ServiceHost shcontact = null;

        private void Form1_Load(object sender, EventArgs e)
        {

            shlogin = new ServiceHost(typeof(LoginService));
            shlogin.Open();

            shsignup = new ServiceHost(typeof(SignupService));
            shsignup.Open();

            shforgot = new ServiceHost(typeof(ForgotService));
            shforgot.Open();

            shreset = new ServiceHost(typeof(ResetService));
            shreset.Open();

            shcontact = new ServiceHost(typeof(ContactService));
            shcontact.Open();

            label1.Text = "Service is Running.";
        }

        private void FormClose(object sender, FormClosingEventArgs e)
        {
            shlogin.Close(); 
            shsignup.Close();
            shforgot.Close();
            shreset.Close();
            shcontact.Close();
        }
    }
}
