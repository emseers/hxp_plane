package plugins.tiled;

/**
 * ...
 * @author Emseers
 * 
 * Thanks Matt Tuttle@Haxepunk Team for HaxePunkTmx (which this is a modifcation of)
 * Tiled http://doc.mapeditor.org/reference/tmx-map-format/
 */

import haxe.xml.Fast;

class TiledTileSet{
	
	public var firstGid:Int;
	
	/**
	 * Assumptions made for laziness 
	 * spacing = 1. tW, tH are same as rest
	 */
	
	public var numCol:Int;
	public var numRow:Int; 
	
	public var tileProps:Array<TiledPropertySet>;
	
	public function new(tileSet:Fast) {
		firstGid = Std.parseInt(tileSet.att.firstgid);
		
		numCol = Math.floor(Std.parseInt(tileSet.node.image.att.width) / Main.tW);
		numRow = Math.floor(Std.parseInt(tileSet.node.image.att.height) / Main.tH);
		
		tileProps = new Array<TiledPropertySet>();
	
		for (node in tileSet.nodes.tile) {
			var nodeId = Std.parseInt(node.att.id);
			tileProps[nodeId] = new TiledPropertySet();
			
			for(propertyNode in node.nodes.properties)
				tileProps[nodeId].extend(propertyNode);
		}
	}
	
	public function getTileProperty(gid:Int, _property:String){
		var id:Int = gid - firstGid;
		return tileProps[id].resolve(_property);
	}

	public function getTileRow(gid:Int){
		var id:Int = gid - firstGid;
		return (id / numRow);
	}
	
	public function getTileCol(gid:Int){
		var id:Int = gid - firstGid;
		return (id - (numCol * getTileRow(gid)));
	}
}