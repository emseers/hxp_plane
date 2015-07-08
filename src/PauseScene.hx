package;
import com.haxepunk.Scene;

import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;

/**
 * ...
 * @author Boarnoah
 */
class PauseScene extends Scene{

	public function new() {
		super();
		trace("PauseScene created...");
	}
	public override function begin() {
		
	}
	
	public override function update(){
		super.update();
		
		if(Input.check(Key.ENTER)){
			Main.unpauseGame();
		}
	}
}
