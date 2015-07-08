import com.haxepunk.Scene;
import com.haxepunk.graphics.Image;
import com.haxepunk.Entity;
import entities.Player;
import src.entities.Enemy_0;

import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;

import Camera;

class MainScene extends Scene{
	private var block:Entity;
	
	public function new(){
		super();
		trace("MainScene created...");
		
		var w_x:Int = Std.int(1280 / 2);
		var h_y:Int = Std.int(720 / 2);
		
		add(new Player(w_x, h_y));
		add(new Enemy_0(600, 300));
		add(new Camera());
		add(new MouseControl());
	}
	
	/*
	 * Happens each time
	*/
	public override function begin() {
	}
	
	public override function update(){
		super.update();
		if(Input.check(Key.ESCAPE)){
			Main.pauseGame();
		}
	}
}
