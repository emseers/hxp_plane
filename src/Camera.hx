package;
import com.haxepunk.Entity;
import com.haxepunk.HXP;
import entities.Player;

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

		moveTowards(focusX, focusY, camSpeed, null, false);
		
		HXP.camera.x = x - (WIDTH / 2);
		HXP.camera.y = y - (HEIGHT / 2);
	}
}