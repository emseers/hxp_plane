package;
import com.haxepunk.Entity;
import com.haxepunk.HXP;
import entities.Player;


import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;

/**
 * ...
 * @author Boarnoah
 */
class Camera extends Entity {
	public var camDistance:Float = 300;
	private var camSpeed:Float = 4;
	
	private var playerChar:Player;
	private var playerX:Float;
	private var playerY:Float;
	private var playerDir:Float;
	
	private var focusX:Float = 0;
	private var focusY:Float = 0;
	
	private var WIDTH:Int = 1280;
	private var HEIGHT:Int = 720;	
	
	public function new() {
		super();
	}
	
	override public function added():Void{
		playerChar = cast((scene.getInstance("Player")), Player);

		x = (WIDTH/2) + camDistance;
		y = (HEIGHT / 2);
	}
	
	override public function update():Void {
		playerX = playerChar.x;
		playerY = playerChar.y;
		playerDir = playerChar.getDir();
		
		focusX = playerX + (camDistance * Math.cos(HXP.RAD * playerDir));
		focusY = playerY + (camDistance * Math.sin(HXP.RAD * playerDir));
		trace("X: " + x);
		
		if (Input.pressed(Key.DIGIT_4)) {
			camSpeed = 4;
		}if (Input.pressed(Key.DIGIT_3)){
			camSpeed = 3;
		}
		
		if (Input.pressed(Key.DIGIT_1)) {
			camSpeed -= 0.25;
		}if (Input.pressed(Key.DIGIT_2)){
			camSpeed += 0.25;
		}
		
		trace("CAMSPEED " + camSpeed);
		
		//if((Math.abs(focusX - x) > 2) || (Math.abs(focusY - y) > 2)){
		/*
			camSpeed = 4;
			trace("SLOW");
		}else{
			camSpeed = 2;
			trace("SLOW");
		}
		*/
		var derpAngle = Math.fround(HXP.angle(x, y, focusX, focusY));
		moveAtAngle(derpAngle, camSpeed, null, false);	
		//moveTowards(focusX, focusY, camSpeed, null, false);
		
		HXP.camera.x = x - (WIDTH / 2);
		HXP.camera.y = y - (HEIGHT / 2);
		//}
	}
}