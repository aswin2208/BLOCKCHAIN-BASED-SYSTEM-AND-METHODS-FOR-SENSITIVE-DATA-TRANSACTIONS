package Inter;

import Bean.managebean;
import Bean.sregbean;
import Bean.taskbean;
import Bean.tlfilebean;
import Bean.tlregbean;

public interface Inter {

	public int tlreg(tlregbean tb);
	
	public boolean tlog(tlregbean tb);
	
	public int tlf(tlfilebean tf);
	
	public int sreg(sregbean sb);
	
	public boolean slog(sregbean sl);
	
	public int task(taskbean t);
	
	public int upk(taskbean u);
	
	public int mkey(managebean mb);
}
