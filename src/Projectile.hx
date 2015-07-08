package;
import com.haxepunk.Entity;
import com.haxepunk.HXP;
/**
 * ...
 * @author Boarnoah
 */
class Projectile extends Entity{
	var _speed:Int = 30;
	var _hitboxSize:Int = 2;
	var _velocityX:Float;
	var _velocityY:Float;
	
	public function new() {
		super();
	}
	
	public function setupProjectile(_x:Float, _y:Float, _dir:Float):Void{
		x = _x;
		y = _y;
		
		_velocityX = _speed * Math.cos((HXP.RAD * -1) * _dir);
		_velocityY = _speed * Math.sin((HXP.RAD * -1) * _dir);
	}
	
	override public function update(){
		x += _velocityX;
		y += _velocityY;
	}
}