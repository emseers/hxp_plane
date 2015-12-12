package plugins.tiled;

import haxe.xml.Fast;

/**
 * ...
 * @author Boarnoah
 * 
 * Thanks Matt Tuttle@Haxepunk Team for HaxePunkTmx (which this is a modifcation of)
 * Tiled http://doc.mapeditor.org/reference/tmx-map-format/
 */
class TiledPropertySet implements Dynamic<String>{
	private var keys:Map<String,String>;
	
	public function new() {
		keys = new Map<String,String>();
	}
	
	public function resolve(name:String):String{
		return keys.get(name);
	}

	public function has(name:String):Bool{
		return keys.exists(name);
	}

	public function extend(source:Fast){
		for (node in source.nodes.property)
			keys.set(node.att.name, node.att.value);
	}
}