package overlays;
import com.haxepunk.Entity;
import com.haxepunk.utils.Input;

import com.haxepunk.graphics.Image;

/**
 * ...
 * @author Boarnoah
 */
class PauseOverlay extends Entity{
	private var overlaySprite:Image;
	
	private var b1_0_X:Int = 412;
	private var b1_0_Y:Int = 139;
	private var b1_1_W:Int = 446;
	private var b1_1_H:Int = 142;
	private var b2_0_X:Int = 529;
	private var b2_0_Y:Int = 371;
	private var b2_1_W:Int = 202;
	private var b2_1_H:Int = 99;
	
	public function new() {
		super();
		overlaySprite = new Image("graphics/restartOverlay.png");
		graphic = overlaySprite;
	}
		
	public override function update(){
		if (Input.mouseDown) {
			if(mouseInRegion(b1_0_X, b1_0_Y, b1_1_W, b1_1_H)){
				Main.unpauseGame();
			}else if(mouseInRegion(b2_0_X, b2_0_Y, b2_1_W, b2_1_H)){
				Main.restartGame();
			}
		}
	}
	
	// TODO Externalise function to utils class
	/**
	 * FUNCTION is also used in gameOverlay
	 * Returns boolean of whether cursor is within a box
	 * Parameters: (top left x, top left y, width of box, height of box)
	 * @return true/false based on cursors location in box
	 * 
	 **/
	private function mouseInRegion(xX:Int, yY:Int, width:Int, height:Int):Bool{
		var mouseX:Int = scene.mouseX;
		var mouseY:Int = scene.mouseY;
		
		if(mouseX >= xX && mouseX <= (xX + width)){
			if(mouseY >= yY && mouseY <= (yY + height)){
				return true;
			}else
				return false;
		}else
			return false;
	}
}