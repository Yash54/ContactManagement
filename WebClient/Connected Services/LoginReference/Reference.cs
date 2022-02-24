﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebClient.LoginReference {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="LoginReference.ILogin")]
    public interface ILogin {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILogin/Login", ReplyAction="http://tempuri.org/ILogin/LoginResponse")]
        string Login(string uname, string pass);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILogin/Login", ReplyAction="http://tempuri.org/ILogin/LoginResponse")]
        System.Threading.Tasks.Task<string> LoginAsync(string uname, string pass);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ILoginChannel : WebClient.LoginReference.ILogin, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class LoginClient : System.ServiceModel.ClientBase<WebClient.LoginReference.ILogin>, WebClient.LoginReference.ILogin {
        
        public LoginClient() {
        }
        
        public LoginClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public LoginClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public LoginClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public LoginClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public string Login(string uname, string pass) {
            return base.Channel.Login(uname, pass);
        }
        
        public System.Threading.Tasks.Task<string> LoginAsync(string uname, string pass) {
            return base.Channel.LoginAsync(uname, pass);
        }
    }
}
