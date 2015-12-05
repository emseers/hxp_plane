package entities;

import com.haxepunk.Entity;
import com.haxepunk.Scene;

import com.haxepunk.tmx.TmxMap;
import com.haxepunk.tmx.TmxEntity;
/**
 * ...
 * @author Boarnoah
 */
class GMap extends Entity{
	
	public var gameMapData:TmxMap;
	public var gameMap:TmxEntity;
	
	public function new() {
		super();
	}
	
	dynamic public function loadMap(mapName:String) {
		trace("Loading map: \"" + mapName + "\"...");
		
		gameMapData = TmxMap.loadFromFile(mapName);
		
		//loadObjects();
		/*
		for(object in gameMapData.getObjectGroup("oLayer1").objects){
			trace("mooo");
			trace("o: " + object.type + " x: " + object.x + " y: " + object.y);
			trace("ooo: " + object.custom.resolve("hp"));
		}
		
		*/
		
		loadTerrain();
		loadObjects();	
	}
	
	private function loadTerrain(){
		gameMap = new TmxEntity(gameMapData);
		gameMap.loadGraphic("graphics/2d_Tiles.png", ["tLayer1", "tLayer2"]);
		scene.add(gameMap);
	}
	
	private function loadObjects(){
		for (object in gameMapData.getObjectGroup("oLayer1").objects) {
			var _x:Int = object.x;
			var _y:Int = object.y;
			var _type:String = object.type;
			
			
			/**
			 * ge = GameEntity
			 * f = faction
			 * ut = unitType
			 **/
			
			
			if (_type == "ge") {
				var _unitType:Int = Std.parseInt(object.custom.resolve("ut"));
				var _faction:Int = Std.parseInt(object.custom.resolve("f"));
				scene.add(new GameEntity(_x, _y, _unitType, _faction));
			}
			
			//trace("mooo");
			//trace("o: " + object.type + " x: " + object.x + " y: " + object.y);
			//trace("ooo: " + object.custom.resolve("hp"));
		}
		trace("WIDTH : " + Main.tW);
	}
	
	dynamic public function getObjects(oLayer:String) {
		return gameMapData.getObjectGroup(oLayer).objects;
	}
	
	dynamic public function getMapSize() {
		return gameMapData.width;
	}
}