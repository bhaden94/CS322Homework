using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BradyHaden.Startup))]
namespace BradyHaden
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
