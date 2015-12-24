package entities.ui;
import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;

/**
 * ...
 * @author Emseers
 */
class GuiButton extends Entity{

	public function new(image:String) {
		super();
		addGraphic(new Image("graphics/gui/" + image));
	}
	
	
}