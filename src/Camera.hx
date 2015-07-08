package;
import com.haxepunk.Entity;
import com.haxepunk.HXP;
import entities.Player;

import com.haxepunk.graphics.Image;
/**
 * ...
 * @author Boarnoah
 */
class Camera extends Entity {
	public var bufferWidth:Int = 600;
	public var bufferHeight:Int = 300;
	
	private var deltaX:Float;
	private var deltaY:Float;
	
	private var playerX:Float;
	private var playerY:Float;
	private var playerDir:Float;
	
	
	private var mouseX:Float;
	private var mouseY:Float;
	
	private var cameraX:Float = 0;
	private var cameraY:Float = 0;

	private var playerChar:Player;
	private var camSpeed:Float = 5;
	public function new() {
		super();
	}
	
	override public function added():Void{
		playerChar = cast((scene.getInstance("Player")), Player);
		
		
		
		graphic = new Image("graphics/testSprite.png");
		x = (1280/2);//+ 300
		y = (720 / 2);
		//HXP.camera.x = x - (1280 / 2);
		//HXP.camera.y = y - (720 / 2);
		cameraX = x - (1280 / 2);
		cameraY = y - (720 / 2);
	}
	
	override public function update():Void {
		playerX = playerChar.x;
		playerY = playerChar.y;
		//mouseX = scene.mouseX;
		//mouseY = scene.mouseY;
		
		HXP.camera.x = playerX - (1280 / 2);
		HXP.camera.y = playerY - (720 / 2);
		//playerDir = Math.fround(HXP.angle(playerX, playerY, mouseX, mouseY));
		//playerChar.getDir();
		//HXP.angleXY(this, playerDir, 300, playerX, playerY);
		
		//deltaX = playerX - mouseX;
		//deltaY = playerY - mouseY;
		
		
		
		//cameraX = HXP.camera.x;
		//cameraY = HXP.camera.y;
		//HXP.camera.x = x - (1280 / 2);
		//HXP.camera.y = y - (720 / 2);
	}
}

		/*
		playerDir = playerChar.getDir();
		//moveAtAngle(playerDir, 3, null, false);
		


		if (playerDir <= 90) {
			trace("DOES THIS NOT WORK");
			deltaX = playerX + (300*(Math.cos(playerDir * (HXP.RAD * -1))));
			deltaY = playerY + (300*(Math.sin(playerDir * (HXP.RAD * -1))));
		}else if (playerDir > 90 && playerDir <= 180) {
								//This is actually negative
			deltaX = playerX + (300*(Math.cos(playerDir * (HXP.RAD * -1))));
			deltaY = playerY + (300*(Math.sin(playerDir * (HXP.RAD * -1))));
		}else if(playerDir > 180 && playerDir <= 270){
			deltaX = playerX + (300*(Math.sin(playerDir * (HXP.RAD * -1))));
			deltaY = playerY + (300*(Math.cos(playerDir * (HXP.RAD * -1))));
		}else if(playerDir > 270){
			deltaX = playerX + Math.abs(300*(Math.sin(playerDir * (HXP.RAD * -1))));
			deltaY = playerY - (300*(Math.cos(playerDir * (HXP.RAD * -1))));
		}
		
		x = deltaX;
		y = deltaY;
		*/


		/*
		playerX = playerChar.x;
		playerY = playerChar.y;
		cameraX = HXP.camera.x;
		cameraY = HXP.camera.y;
		
		playerDir = playerChar.getDir();
		moveAtAngle(playerDir, 3, null, false);
		


		if (playerDir <= 90) {
			trace("DOES THIS NOT WORK");
			deltaX = playerX + (300*(Math.cos(playerDir * (HXP.RAD * -1))));
			deltaY = playerY + (300*(Math.sin(playerDir * (HXP.RAD * -1))));
		}else if (playerDir > 90 && playerDir <= 180) {
								//This is actually negative
			deltaX = playerX + (300*(Math.cos(playerDir * (HXP.RAD * -1))));
			deltaY = playerY + (300*(Math.sin(playerDir * (HXP.RAD * -1))));
		}else if(playerDir > 180 && playerDir <= 270){
			deltaX = playerX + (300*(Math.sin(playerDir * (HXP.RAD * -1))));
			deltaY = playerY + (300*(Math.cos(playerDir * (HXP.RAD * -1))));
		}else if(playerDir > 270){
			deltaX = playerX + Math.abs(300*(Math.sin(playerDir * (HXP.RAD * -1))));
			deltaY = playerY - (300*(Math.cos(playerDir * (HXP.RAD * -1))));
		}
		
		x = deltaX;
		y = deltaY;
		
		HXP.camera.x = x - (1280 / 2);
		HXP.camera.y = y - (720 / 2);
		
		*/
		/*
		playerX = playerChar.x;
		playerY = playerChar.y;
		HXP.camera.x = playerX - (1280 / 2);
		HXP.camera.y = playerY - (720 / 2);
		*/
		/*
		playerX = playerChar.x;
		playerY = playerChar.y;
		cameraX = HXP.camera.x;
		cameraY = HXP.camera.y;
		
		playerDir = playerChar.getDir();
		
		//trace("ANG: " + playerDir + "___X: " + playerX);
		
		deltaX = cameraX - playerX;
		deltaY = cameraY - playerY;
		trace("dX: " + deltaX + " dy: " + deltaY);
		
		*/
		
		
		/*
		playerX = playerChar.x;
		playerY = playerChar.y;
		cameraX = HXP.camera.x;
		cameraY = HXP.camera.y;
		
		playerDir = playerChar.getDir();
		moveAtAngle(playerDir, 3, null, false);
		
		HXP.camera.x = x - (1280 / 2);
		HXP.camera.y = y - (720 / 2);
		*/
		/*
		if (playerDir <= 90) {
			trace("DOES THIS NOT WORK");
			deltaX = playerX + (300*(Math.cos(playerDir * (HXP.RAD * -1))));
			deltaY = playerY + (300*(Math.sin(playerDir * (HXP.RAD * -1))));
		}else if (playerDir > 90 && playerDir <= 180) {
								//This is actually negative
			deltaX = playerX + (300*(Math.cos(playerDir * (HXP.RAD * -1))));
			deltaY = playerY + (300*(Math.sin(playerDir * (HXP.RAD * -1))));
		}else if(playerDir > 180 && playerDir <= 270){
			deltaX = playerX + (300*(Math.sin(playerDir * (HXP.RAD * -1))));
			deltaY = playerY + (300*(Math.cos(playerDir * (HXP.RAD * -1))));
		}else if(playerDir > 270){
			deltaX = playerX + Math.abs(300*(Math.sin(playerDir * (HXP.RAD * -1))));
			deltaY = playerY - (300*(Math.cos(playerDir * (HXP.RAD * -1))));
		}
		
		x = deltaX;
		y = deltaY;
		
		*/
		/*
		playerX = playerChar.x;
		playerY = playerChar.y;
		HXP.camera.x = playerX - (1280 / 2);
		HXP.camera.y = playerY - (720 / 2);
		*/
		/*
		playerX = playerChar.x;
		playerY = playerChar.y;
		cameraX = HXP.camera.x;
		cameraY = HXP.camera.y;
		
		playerDir = playerChar.getDir();
		
		//trace("ANG: " + playerDir + "___X: " + playerX);
		
		deltaX = cameraX - playerX;
		deltaY = cameraY - playerY;
		trace("dX: " + deltaX + " dy: " + deltaY);
		
		
		
		****
		*/
		
		
		/*
		playerX = playerChar.x;
		playerY = playerChar.y;
		deltaX = Math.round(playerChar.x) - Math.round(scene.mouseX);
		deltaY = Math.round(playerChar.y) - Math.round(scene.mouseY);
		//cameraX = HXP.camera.x;
		//cameraY = HXP.camera.y;
		//HXP.camera.x += 1;
		
		//trace("HXP CAM: " + HXP.camera.x  + "MouseX: " + Input.mouseX);//+ "   __> " + HXP.camera.y

		//if(deltaX != bufferWidth){
			// player is ahead of mouse (mouse is to the left)
			if(deltaX > (0 + camSpeed)){
				cameraX -= camSpeed;
				//trace("Moving cam left");
			// player is behind of mouse (mouse is to the right)
			}else if(deltaX < (0 - camSpeed)){
				cameraX += camSpeed;
				//trace("Moving cam right");
			}
		//}
		
		//if(deltaY != bufferHeight){
			// player is below mouse
			if(deltaY > (0 + camSpeed)){
				cameraY -= camSpeed;
				//trace("Moving cam up");
			// player is above mouse 
			}else if(deltaY < (0 - camSpeed)){
				cameraY += camSpeed;
				//trace("Moving cam down");
			}
		//}
		HXP.camera.x = cameraX - (1280 / 2);
		HXP.camera.y = cameraY - (720 / 2);
		//HXP.setCamera(cameraX, cameraY);
		
		
		*/