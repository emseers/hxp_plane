package;
import com.haxepunk.Scene;

import overlays.PauseOverlay;

/**
 * ...
 * @author Boarnoah
 */
class PauseScene extends Scene {
	
	public function new() {
		super();
		trace("PauseScene created...");
		add(new PauseOverlay());
		add(new MouseControl());
	}
}
