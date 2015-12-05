package;
import com.haxepunk.graphics.Text;
import com.haxepunk.Scene;

import com.haxepunk.utils.Input;

import com.haxepunk.HXP;

import entities.GMap;
import entities.EnemyManager;
import entities.InputManager;

/**
 * ...
 * @author Boarnoah
 */
class GameScene extends Scene{
	//public var gameMapData:TmxMap;
	//public var gameMap:TmxEntity;
	public var currentMapName:String;
	public var gameMap:GMap;
	public var enemyManager:EnemyManager;
	public var inputManager:InputManager;
	
	var tileX = 0;
	var tileY = 0;
	var textCoord = new Text("( x, y)");
	
	
	
	public function new() {
		super();
		currentMapName = "maps/" + "tMap3" + ".tmx";
		gameMap = new GMap();
		enemyManager = new EnemyManager();
		inputManager = new InputManager();
		
		add(enemyManager);
		add(gameMap);
		add(inputManager);
	}
	
	public override function begin(){
		gameMap.loadMap(currentMapName);
		//trace("WIDTH : " + Main.tW);
		//gameMap.getObjects("oLayer1");
		inputManager.setCameraBounds(gameMap.getMapSize());
		//enemyManager.loadEnemies(gameMap.getObjects("oLayer1"));
		
		
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