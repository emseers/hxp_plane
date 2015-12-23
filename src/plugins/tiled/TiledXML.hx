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
	public var tileLayers:Array<TiledLayer>;
	public var objectLayers:Array<TiledObjectGroup>;
	
	public static function loadFromFile(_filePath:String):TiledXML{
		trace("Parsing XML " + _filePath + " from file...");
		return new TiledXML(Assets.getText(_filePath), _filePath);
	}
	
	public function new(fileDataString:String, _filePath:String) {
		filePath = _filePath;
		fileDataXml = new Fast(Xml.parse(fileDataString));
		fileDataXml = fileDataXml.node.map;
		
		width = Std.parseInt(fileDataXml.att.width);
		height = Std.parseInt(fileDataXml.att.height);
		
		tileSets = new Array<TiledTileSet>();
		tileLayers = new Array<TiledLayer>();
		objectLayers = new Array<TiledObjectGroup>();
		
		// Parse tileSets
		for (node in fileDataXml.nodes.tileset)
			tileSets.push(new TiledTileSet(node));
		
		// Parse tiles
		for(node in fileDataXml.nodes.layer)
			tileLayers.push(new TiledLayer(node));
		
		for (node in fileDataXml.nodes.objectgroup)
			objectLayers.push(new TiledObjectGroup(node));
		
		/*
			usage:
			get the tileSet num by finding the tileset with first tileSet whose firstGid is greater than
			current tile's, tiled sorts tilesets in xml by firstGid order
			http://doc.mapeditor.org/reference/tmx-map-format/
			var t = tileSets[0];
			trace("===> " + t.getTileProperty(2, "testProp1"));
			
			ex:
			var d = tileSets[0];
			trace(d.firstGid);
			d.getTileProperty(2, "testProp1");
		*/
	}
	
	//Helper functions
	public function findTileSet(tileGid:Int) {
		var tileSetNum:Int = -1;
		
		for (i in 0...tileSets.length) {
			var firstGid = tileSets[i].firstGid;
			var numTiles = tileSets[i].numCol * tileSets[i].numRow;
			
			if (tileGid >= firstGid && tileGid <= (firstGid + numTiles))
				tileSetNum = i;
		}
		
		return tileSetNum;
	}
}