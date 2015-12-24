package plugins.tiled;

/**
 * ...
 * @author Emseers
 * 
 * Thanks Matt Tuttle@Haxepunk Team for HaxePunkTmx (which this is a modifcation of)
 * Tiled http://doc.mapeditor.org/reference/tmx-map-format/
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