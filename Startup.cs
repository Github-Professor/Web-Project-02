using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(Web_Project_02.Startup))]

namespace Web_Project_02
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.MapSignalR();  
        }
    }
}
