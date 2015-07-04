import com.haxepunk.Scene;
import com.haxepunk.graphics.Image;
import com.haxepunk.Entity;
import entities.Player;

class MainScene extends Scene{
	private var block:Entity;
	
	public function new(){
		super();
	}
	
	public override function begin() {
		var w_x:Int = 128; //Std.int(1280 / 2);
		var h_y:Int = 128; //Std.int(720 / 2); 
		
		add(new Player(w_x, h_y));
	}
	
	public override function update(){
		super.update();
	}
}
