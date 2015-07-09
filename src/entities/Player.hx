package entities;
import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;
import com.haxepunk.HXP;

import bullets.MgBullet;

//import com.haxepunk.tmx.TmxEntity;

/**
 * ...
 * @author Boarnoah
 */
class Player extends Entity{
	//TODO move all entites to subsect of gameEntity (which has x,y,dir,isGamePaused,isDead etc...)
	
	private var mouseX:Int;
	private var mouseY:Int;
	
	private var newAngle:Float;
	private var deltaAngle:Float;
	private var dir:Float;
	
	// Weapon stats
	private var mgBulletTime:Int = 0;
	private var mgBulletCd:Int = 5;
	
	// Movement stats
	private var speed:Int = 3;
	private var turnSpeed:Int = 1;
	
	private var playerSprite:Image;
	public function new(_x:Int, _y:Int) {
		super();
		name = "Player";
		x = _x;
		y = _y;
		dir = 0;
		playerSprite = new Image("graphics/player.png");
		playerSprite.centerOrigin();
		graphic = playerSprite;
	}
	
	override public function update() {		
		
		checkInput();
		timers();
		playerSprite.angle = dir;
		moveAtAngle(dir, speed, null, false);
	}
	
	public inline function getDir():Float{
			return dir;
	}
	
	private function timers(){
		if (mgBulletTime != 0)
			mgBulletTime--;
	}
	
	private function checkInput(){
		/**
		 * Weapons Input 
		 */
		if(Input.mouseDown){
			if (mgBulletTime == 0) {
				// Fire mgBullet
				var _mgBullet = scene.create(MgBullet, true, null);
				_mgBullet.setBullet(x, y, dir, 0);
				
				// Start cooldown
				mgBulletTime = mgBulletCd;
			}
		}
		
		/**
		 * Movement input
		 */
		mouseX = scene.mouseX;
		mouseY = scene.mouseY;
		
		newAngle = Math.fround(HXP.angle(x, y, mouseX, mouseY));
		deltaAngle = newAngle - dir;
		
		if (deltaAngle < (0 - turnSpeed))
			deltaAngle += 360;
		
		if (deltaAngle <= (180 - turnSpeed)){
			dir += turnSpeed;
			
			if(dir >= (360 + turnSpeed)){
				dir -= 360;
			}
		}else{
			dir -= turnSpeed;
			
			if(dir <= (0 - turnSpeed)){
				dir += 360;
			}
		}
	}
}