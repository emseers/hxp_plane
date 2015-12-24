package;

/**
 * ...
 * @author Emseers
 */
class GNavigation {
	public var navList:Array<NavLayer>;
	
	public function new() {
		navList = new Array<NavLayer>();
	}
	
	public function addTile(tileCost:Int, layer:Int){
		navList[layer].layerData.push(tileCost);
	}
	
	public function addLayer() {
		navList.push(new NavLayer());
	}
}

class NavLayer{
	public var layerData:Array<Int>;
	
	public function new(){
		layerData = new Array<Int>();
	}
}