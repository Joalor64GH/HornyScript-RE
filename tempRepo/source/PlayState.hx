package;

import flixel.text.FlxText;
import flixel.FlxState;
import flixel.FlxG;
import horny.*;

class PlayState extends FlxState
{
	override public function create() 
	{
		super.create();

		var hscript:HornyScript = new HornyScript((Paths.script('script')));

		var coolText:FlxText = new FlxText(5, FlxG.height - 44, 0, "Hello World", 22);
		coolText.scrollFactor.set();
		coolText.setFormat("VCR OSD Mono", 26, 0xFFffffff, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		add(coolText);
	}
	
	override public function update(elapsed:Float) 
	{
		super.update(elapsed);
	}
}