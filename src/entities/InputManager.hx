package entities;

import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;

import entities.GMap;

/**
 * ...
 * @author Boarnoah
 */
class InputManager extends Entity{
	public var cameraSpeed:Int = 512; //64 px/s
	private var camBound:Int = 0;
	
	//public var xTiles;
	
	public function new() {
		super();
		
		//scene.derp();
		//scene.getInstance("GMap")	; 
	}
	
	
	override public function update() {
		var moveDistance = cameraSpeed * HXP.elapsed;

		if (Input.check(Key.W)) {
			if (HXP.camera.y >= moveDistance)
				HXP.camera.y -= moveDistance;
		}else if (Input.check(Key.S)) {
			//TODO: Weird 32 px gap at bottom(?)
			if (HXP.camera.y <= (camBound + moveDistance - HXP.height))
				HXP.camera.y += moveDistance;
		}
		
		if(Input.check(Key.A)){
			if (HXP.camera.x >= moveDistance)
				HXP.camera.x -= moveDistance;
		}else if(Input.check(Key.D)){
			if (HXP.camera.x <= (camBound + moveDistance - HXP.width))
				HXP.camera.x += moveDistance;
		}
	}
	
	dynamic public function setCameraBounds(mapSize:Int) {
		camBound = mapSize * 64;
	}
}