package plugins.tiled;

/**
 * ...
 * @author Boarnoah
 */

import haxe.xml.Fast;

class TiledObject{
	public var objectProps:TiledPropertySet;
	public var type:String;
	public var x:Int;
	public var y:Int;
	
	public function new(tileObject:Fast) {
		type = tileObject.att.type;
		x = Std.parseInt(tileObject.att.x);
		y = Std.parseInt(tileObject.att.y);
		
		objectProps = new TiledPropertySet();
		objectProps.extend(tileObject);
	}
}