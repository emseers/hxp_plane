package;
import com.haxepunk.Entity;
import com.haxepunk.HXP;
/**
 * ...
 * @author Boarnoah
 */
class Projectile extends Entity{
	var _speed:Int = 30;
	var _velocityX:Float;
	var _velocityY:Float;
	var _dead:Bool;
	var _hitboxSize:Int = 2;
	var _explodeDistance:Int;
	
	public function new() {
		super();
	}
	
	public function setProjectile(_x:Float, _y:Float, _dir:Float){
		x = _x;
		y = _y;
		_explodeDistance = 500;
		_dead = false;
		_velocityX = _speed * Math.cos(HXP.RAD * _dir);
		_velocityY = _speed * Math.sin(HXP.RAD * _dir);
	}
	
	override public function update(){
		if (!_dead) {
			moveBy(_velocityX, _velocityY, null, true);

			_explodeDistance -= _speed;
			
			if (_explodeDistance <= 0) {
				_dead = true;
				destroyProjectile();
			}
		}
	}
	
	public function destroyProjectile(){}
}