package;

import com.haxepunk.HXP;
import com.haxepunk.graphics.Text;
import com.haxepunk.Scene;
import com.haxepunk.utils.Input;

import GScene;
import GNavigation;

import entities.GuiManager;
import entities.GMap;
import entities.EnemyManager;
import entities.InputManager;

/**
 * ...
 * @author Emseers
 */
class GameScene extends Scene{
	public var currentMapName:String;
	
	//Haxe Classes
	public var gameNav:GNavigation;
	
	//Haxepunk Entities
	public var gameMap:GMap;
	public var enemyManager:EnemyManager;
	public var inputManager:InputManager;
	public var guiManager:GuiManager;
	
	var tileX:Int = 0;
	var tileY:Int = 0;
	var textCoord = new Text("( x, y)");
	
	public function new() {
		super();
		currentMapName = "maps/" + "tMap6" + ".tmx";
		
		gameNav = new GNavigation();
		
		// Game Entities
		gameMap = new GMap();
		enemyManager = new EnemyManager();
		inputManager = new InputManager();
		guiManager = new GuiManager();
		
		add(enemyManager);
		add(gameMap);
		add(inputManager);
		add(guiManager);	
	}
	
	override public function begin() {
		super.begin();
		
		// A begin function for gameEntities (begin is called after all entities are loaded in)
		gameMap.begin();
		inputManager.begin();
		guiManager.begin();
		
		gameMap.loadMap(currentMapName);
		guiManager.loadGUI();
		inputManager.setCameraBounds(gameMap.getMapSize());
		
		#if debug
			textCoord.x = HXP.width - 64;
			textCoord.y = 32;
			addGraphic(textCoord);
		#end
	}
	
	override public function update() {
		super.update();
		
		#if debug
			tileX = Math.floor(mouseX / 64);
			tileY = Math.floor(mouseY / 64);
			textCoord.text = "(" + tileX + ", " + tileY + ")";
		#end
	}
}