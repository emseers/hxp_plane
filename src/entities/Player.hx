package entities;
import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;
import com.haxepunk.HXP;

/**
 * ...
 * @author Boarnoah
 */
class Player extends Entity{
	
	private var speed:Int = 5;
	private var turnSpeed:Int = 10;
	private var mouseX:Int;
	private var mouseY:Int;
	
	private var ang:Float;
	private var currentAngle:Float = 0;
	private var newAngle:Float;
	private var deltaAngle:Float;
	private var playerSprite:Image;
	public function new(_x:Int, _y:Int) {
		super();//x, y
		x = _x;
		y = _y;
		playerSprite = new Image("graphics/player.png");
		playerSprite.centerOrigin();
		graphic = playerSprite;
	}
	
	override public function update(){
		mouseX = Input.mouseX;
		mouseY = Input.mouseY;

		
		ang = HXP.angle(x, y, mouseX, mouseY);
		//playerSprite.angle = currentAngle;
		
		newAngle = Math.fround(ang);
		deltaAngle = newAngle - currentAngle;
		
		if (deltaAngle < 0)
			deltaAngle += 360;
		
		if (deltaAngle <= 180){
			currentAngle += 1;
			
			if(currentAngle >= 360){
				currentAngle -= 360;
			}
		}else{
			currentAngle -= 1;
			
			if(currentAngle <= 0){
				currentAngle += 360;
			}
		}
		
		playerSprite.angle = currentAngle;
		//if(newAngle < (245 + 90) || newAngle > (295 + 90)){
			/*
			 if (newAngle > 90 && newAngle < 245)
				currentAngle += speed;
			else if (newAngle < 90
			*/
			/*
			if (newAngle < currentAngle)
				currentAngle -= speed;
			else if (newAngle > currentAngle)
				currentAngle += speed;
			*/
			/*
			if(newAngle < 180){
				if (currentAngle > 90)
					currentAngle += 1;
				else if (currentAngle < 90)
					currentAngle -= 1;
			}else if (newAngle > 180) {
				if(currentAngle 
			}
			*/
		//}
		//setOrigin
		moveAtAngle(currentAngle, speed, null,false);
		trace("NEW: "  + (newAngle) + "    OLD: " + currentAngle);
	}
}