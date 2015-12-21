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
		
		for (tileNode in tileLayer.nodes.tile)
		tileLayer = tileLayer.node.data;
			tileData.push(Std.parseInt(tileNode.att.gid));
	}
}