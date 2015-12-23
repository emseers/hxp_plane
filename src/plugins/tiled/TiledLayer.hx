package plugins.tiled;

/**
 * ...
 * @author Boarnoah
 */
import haxe.xml.Fast;

class TiledLayer{
	public var tileData:Array<Int>;
	
	public function new(tileLayer:Fast) {
		tileData = new Array<Int>();
		tileLayer = tileLayer.node.data;
		
		for (tileNode in tileLayer.nodes.tile)
			tileData.push(Std.parseInt(tileNode.att.gid));
	}
}