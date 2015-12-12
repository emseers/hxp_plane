package plugins.tiled;

/**
 * ...
 * @author Boarnoah
 * 
 * Supports XML Orthognal Tiled Maps
 * 
 * Thanks Matt Tuttle@Haxepunk Team for HaxePunkTmx (which this is a modifcation of)
 * Tiled http://doc.mapeditor.org/reference/tmx-map-format/
 */

import haxe.xml.Fast;

#if nme
	import nme.Assets;
#else
	import openfl.Assets;
#end

class TiledXML{
	public var filePath:String;
	public var fileDataXml:Fast = null;
	
	public var width:Int;
	public var height:Int;
	
	public var tileSets:Array<TiledTileSet>;
	
	public static function loadFromFile(_filePath:String):TiledXML{
		trace("Loading " + _filePath + " from file...");
		return new TiledXML(Assets.getText(_filePath), _filePath);
	}
	
	public function new(fileDataString:String, _filePath:String) {
		filePath = _filePath;
		fileDataXml = new Fast(Xml.parse(fileDataString));
		fileDataXml = fileDataXml.node.map;
		
		width = Std.parseInt(fileDataXml.att.width);
		height = Std.parseInt(fileDataXml.att.height);
		
		tileSets = new Array<TiledTileSet>();
		
		loadTileSets();
		loadTiles();
		loadObjects();
	}
	
	public function loadTileSets():Void{	
		for (node in fileDataXml.nodes.tileset){
			//trace(node.att.firstgid);
			tileSets.push(new TiledTileSet(node));
		}
		/*
		
		decide based on gid which tileset
		xx = tileSets[id]; 
		zz = xx.getTile(yy);
		zz = xx.getTileProperty(yy, "property1");
		
		zz.getProperty()
		xx{
			getTile(yy){
				
			}
		}
		
		usage:
		get the tileSet num by finding the tileset with first tileSet whose firstGid is greater than
		current tile's, tiled sorts tilesets in xml by firstGid order
		http://doc.mapeditor.org/reference/tmx-map-format/
		var t = tileSets[0];
		trace("===> " + t.getTileProperty(2, "testProp1"));
		*/
		var d = tileSets[0];
		trace(d.firstGid);
		trace("===> " + d.getTileProperty(2, "testProp1"));
	}
	
	public function loadTiles():Void{
		
	}
	
	public function loadObjects():Void{
		
	}
}