using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Web_Coffee.Startup))]
namespace Web_Coffee
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
