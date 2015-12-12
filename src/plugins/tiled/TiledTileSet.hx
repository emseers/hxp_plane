package plugins.tiled;

/**
 * ...
 * @author Boarnoah
 */

import haxe.xml.Fast;

class TiledTileSet{
	
	public var firstGid:Int;
	public var tileProps:Array<TiledPropertySet>;
	
	public function new(tileSet:Fast) {
		firstGid = Std.parseInt(tileSet.att.firstgid);
		
		tileProps = new Array<TiledPropertySet>();
	
		for (node in tileSet.nodes.tile) {
			var nodeId = Std.parseInt(node.att.id);
			tileProps[nodeId] = new TiledPropertySet();
			
			for(propertyNode in node.nodes.properties)
				tileProps[nodeId].extend(propertyNode);
		}
	}
	
	public function getTileProperty(_gid:Int, _property:String){
		var id = _gid - firstGid;
		return tileProps[id].resolve(_property);
	}

}