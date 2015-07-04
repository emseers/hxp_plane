import com.haxepunk.Engine;
import com.haxepunk.HXP;

class Main extends Engine{
	
	public static function main() { 
		new Main(); 
	}
	
	override public function init(){
		#if debug
			HXP.console.enable();
		#end
		
		HXP.scene = new MainScene();
	}

}