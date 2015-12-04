import com.haxepunk.Engine;
import com.haxepunk.HXP;
import com.haxepunk.Scene;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;

class Main extends Engine {
	
	public static var mainScene:MainScene;
	public static var pauseScene:PauseScene;
	
	// 0 - main, 1 - pause
	public static var currentScene:Int = 0;
	
	public static function main() { 
		//new Main(); 
		trace("Starting game...");
		//new Main(1280, 720, 15, false);
		new Main(1280, 720, 60, false);
	}
	
	override public function init(){
		#if debug
			HXP.console.enable();
		#end
		
		mainScene = new MainScene();
		pauseScene = new PauseScene();
		
		HXP.scene = mainScene;
	}
	
	/*
	override public function update(){
		if(Input.check(Key.ESCAPE) && currentScene == 0){
			trace("Pausing game...");
			HXP.scene = pauseScene;
			currentScene = 1;
		}else if (Input.check(Key.ENTER) && currentScene == 1) {
			trace("Unpausing game...");
			HXP.scene = mainScene;
			currentScene = 0;
		}
		
	}
	*/
	
	public static function pauseGame():Void{
		if(currentScene == 0){
			trace("Pausing game...");
			HXP.scene = pauseScene;
			currentScene = 1;
		}
	}
	
	public static function unpauseGame():Void{
		if (currentScene == 1) {
			trace("Unpausing game...");
			HXP.scene = mainScene;
			currentScene = 0;
		}
	}
	
	public static function restartGame():Void{
		mainScene = new MainScene();
		unpauseGame();
	}
}