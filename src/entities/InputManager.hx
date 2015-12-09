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
	
	private var moveDistance:Float = 0;
	private var camBound:Int = 0;
	private var _guiManager:GuiManager;
	
	
	//public var xTiles;
	
	public function new() {
		super();
		name = "inputManager";
		//scene.derp();
		//scene.getInstance("GMap")	; 
	}
	
	dynamic public function begin(){
		_guiManager = cast(scene.getInstance("guiManager"), GuiManager);
	}
	
	override public function update() {
		moveDistance = cameraSpeed * HXP.elapsed;
		
		/**
		 * TODO: Add a master key(?) that defined by all input keys, to update ui based on that o.o
		 */
		checkKeyboard();
	}
	
	public function checkKeyboard() { 
		if (Input.check(Key.W)) {
			if (HXP.camera.y >= moveDistance){
				HXP.camera.y -= moveDistance;
				_guiManager.positionGUI();
			}
		}else if (Input.check(Key.S)) {
			//TODO: Weird 32 px gap at bottom(?)
			if (HXP.camera.y <= (camBound + moveDistance - HXP.height)){
				HXP.camera.y += moveDistance;
				_guiManager.positionGUI();
			}
		}
		
		if(Input.check(Key.A)){
			if (HXP.camera.x >= moveDistance){
				HXP.camera.x -= moveDistance;
				_guiManager.positionGUI();
			}
		}else if(Input.check(Key.D)){
			if (HXP.camera.x <= (camBound + moveDistance - HXP.width)){
				HXP.camera.x += moveDistance;
				_guiManager.positionGUI();
			}
		}
	}
		}
	}
	
	dynamic public function setCameraBounds(mapSize:Int) {
		camBound = mapSize * 64;
	}
}