package plugins.tiled;

/**
 * ...
 * @author Boarnoah
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