
import org.mortbay.http.SocketListener;
import org.mortbay.jetty.Server;

public class JettyLauncherTms5Srm {
	protected int port = 8073;
	protected String contextName = "tms5_srm";
	protected String deployPath = "";
	
	public static void main(String[] args) throws Exception {
		JettyLauncherTms5Srm jl = new JettyLauncherTms5Srm();
		jl.init();
		jl.run();
	}
	
	protected void init() {
	}
	
	protected void run() throws Exception {
		Server server = new Server();
		SocketListener listener = new SocketListener();
		listener.setPort(getPort()); 
		server.addListener(listener);
		server.addWebApplication("/" + getContextName() , getDeployPath());
		server.start();
	}
	
	protected int getPort() {
		return port;
	}
	
	protected String getContextName() {
		return contextName;
	}
	
	protected String getDeployPath() {
		if (deployPath.length() == 0) {
			deployPath = "./target/" + contextName + "/";
		}
		return deployPath;
	}
}
