package src.entities;
import com.haxepunk.Entity;
import com.haxepunk.graphics.Spritemap;
/**
 * ...
 * @author Boarnoah
 */
class Enemy_0 extends Entity{
	private var enemyGfx:Spritemap;
	public var WIDTH:Int = 98;
	public var HEIGHT:Int = 98;
	
	public function new(_x:Int, _y:Int) {
		super();
		init();
		x = _x;
		y = _y;
	}
	
	private function init():Void {
		//TODO:choose ENEMY_0_X and choose correct W/H
		enemyGfx = new Spritemap("graphics/enemy_0_0.png", WIDTH, HEIGHT);
		enemyGfx.add("status_0", [0, 1, 2], 30, true);
		
		graphic = enemyGfx;
		enemyGfx.play("status_0");
		
		setHitbox(WIDTH, HEIGHT);
	}
	
	override public function update():Void {
		if(onCamera){
			var e:Entity = collide("projectile", x, y);
			
			if(e != null){
				trace("I GOT HIT SON");
			}
		}
	}
}