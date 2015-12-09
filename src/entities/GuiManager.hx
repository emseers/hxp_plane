package entities;

import com.haxepunk.Entity;
import com.haxepunk.HXP;

import entities.ui.GuiButton;
import entities.InputManager;

/**
 * ...
 * @author Boarnoah
 */
class GuiManager extends Entity{
	public var turnButton:GuiButton;
	private var _inputManager:InputManager;
	
	public function new() {
		super();
		name = "guiManager";
	}
	
	dynamic public function begin(){
		_inputManager = cast(scene.getInstance("inputManager"), InputManager);
	}
	
	override public function update(){
		
	}
	
	dynamic public function loadGUI(){
		turnButton = new GuiButton("endTurn.png");
		
		scene.add(turnButton);
		positionGUI();
	}
	
	dynamic public function positionGUI(){
		turnButton.x = HXP.camera.x + HXP.width - 32;
		turnButton.y = HXP.camera.y + HXP.height - 128;
	}
}