package;

import flixel.text.FlxText;
import flixel.FlxState;
import flixel.FlxG;
import openfl.Lib;
import horny.*;

class PlayState extends FlxState
{
	override public function create() 
	{
		super.create();

		try
		{
			var hscript:HornyScript = new HornyScript((Paths.script('script')));
		}
		catch (e)
		{
			var errText:FlxText = new FlxText(0, 0, 0, "Oops! There was an error with the script!" + "\n" + e.message, 64);
        		errText.screenCenter();
        		add(errText);
		}

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
