package entities;
import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;

/**
 * ...
 * @author Boarnoah
 */
class GameEntity extends Entity {
	
	var xGrid:Int = 0;
	var yGrid:Int = 0;
	
	var unitType:Int = 1;
	var faction:Int = 3;
	
	var maxHp:Int = 1;
	var hp:Int = 1;
	
	var maxTU:Int = 2;
	var currentTU:Int = 2;
	
	
	public function new(_x:Int, _y:Int, _unitType:Int, _faction:Int) {
		super();
		type = "GameEntity";
		
		xGrid = Std.int(_x / 64);
		yGrid = Std.int(_y / 64);
		x = _x;
		y = _y;
		setHitbox(64, 64, 0, 0);
		unitType = _unitType;
		faction = _faction;
		
		loadGraphic();
		
		setEntity();
		
		//scene.inputManager.mapW = 5;
		//trace(scene.inputManager.mapW);
	}
	
	private function setEntity(){
		
	}
	
	public function test(){
		
	}
	
	private function loadGraphic(){
		
		if(faction == 1){
			if(unitType == 1){
				addGraphic(new Image("graphics/type1.png"));
			}else if(unitType == 2){
				addGraphic(new Image("graphics/type2.png"));
			}
		}else if(faction == 2){
			if(unitType == 1){
				addGraphic(new Image("graphics/type1.png"));
			}else if(unitType == 2){
				addGraphic(new Image("graphics/type2.png"));
			}
		}
		
	}
}