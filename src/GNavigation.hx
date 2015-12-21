package;

/**
 * ...
 * @author Boarnoah
 */
class GNavigation{
	public var movementMap:Array<Int>;
	
	public function new() {
		//name = "GNavigation";
		movementMap = new Array<Int>();
	}
	
	public function addTile(tileCost:Int){
		movementMap.push(tileCost);
	}
}