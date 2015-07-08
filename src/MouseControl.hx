package;
import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;
import flash.ui.Mouse;

/**
 * ...
 * @author Boarnoah
 */
class MouseControl extends Entity{
	
	public function new() {
		super();
		graphic = new Image("graphics/cursor.png");
		x = 0;
		y = 0;
		Mouse.hide();
	}
	
	override public function update(){
		x = scene.mouseX;
		y = scene.mouseY;
		super.update();
	}
	
}