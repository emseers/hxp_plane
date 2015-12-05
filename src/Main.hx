import com.haxepunk.Engine;
import com.haxepunk.HXP;

class Main extends Engine
{
	//
	public static var tW:Int = 64;
	public static var tH:Int = 64;
	
	override public function init()
	{
	
	#if debug
		HXP.console.enable();
	#end
		//HXP.scene = new MainScene();
		HXP.scene = new GameScene();
	}

	public static function main() { 
		//new Main(); 
		new Main(1600, 900, 60, false);
	}

}