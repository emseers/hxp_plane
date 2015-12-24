package plugins.tiled;

/**
 * ...
 * @author Emseers
 * 
 * Thanks Matt Tuttle@Haxepunk Team for HaxePunkTmx (which this is a modifcation of)
 * Tiled http://doc.mapeditor.org/reference/tmx-map-format/
 */

import haxe.xml.Fast;
 
class TiledObjectGroup{
	public var objectList:Array<TiledObject>;
	
	public function new(objectGroup:Fast) {
		objectList = new Array<TiledObject>();
		
		for (node in objectGroup.nodes.object)
			objectList.push(new TiledObject(node));
	}	
}