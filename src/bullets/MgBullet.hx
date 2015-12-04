package bullets;
import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;
import com.haxepunk.graphics.Spritemap;
import com.haxepunk.HXP;
/**
 * ...
 * @author Boarnoah
 */
class MgBullet extends Projectile {
	public var bulletDamage:Int = 1337;
	private var bulletSprite:Image;
	private var bulletExplosion:Spritemap;
	private var bulletExpWidth:Int = 32;
	private var bulletExpHeight:Int = 32;
	
	public function new() {
		super();
		
		bulletSprite = new Image("graphics/mgBullet.png");
		bulletExplosion = new Spritemap("graphics/smallExplosion.png", 
											bulletExpWidth, bulletExpHeight,
											destroyBullet);
		bulletExplosion.add("explode", [0, 1, 2, 1, 0], 30, false);
		bulletExplosion.frame = 0;
		bulletSprite.centerOrigin();
		bulletExplosion.centerOrigin();
		graphic = bulletSprite;
		
		_projectileType = "mgBullet";
	}
	
	public function setBullet(_x:Float, _y:Float, _dir:Float, _bDmg:Int) {
		
		
		if (_bDmg != 0)
			bulletDamage = _bDmg;
		
		bulletSprite.angle = _dir;
		super.setProjectile(_x, _y, _dir);
	}
	
	override public function destroyProjectile(){
		graphic = bulletExplosion;
		bulletExplosion.play();
		bulletExplosion.play("explode", true, false);
	}
	
	override public function explodeProjectile(){
		
	}
	
	public function destroyBullet(){
		scene.recycle(this);
	}
}