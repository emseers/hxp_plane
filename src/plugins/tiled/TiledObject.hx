package plugins.tiled;

/**
 * ...
 * @author Emseers
 * 
 * Thanks Matt Tuttle@Haxepunk Team for HaxePunkTmx (which this is a modifcation of)
 * Tiled http://doc.mapeditor.org/reference/tmx-map-format/
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