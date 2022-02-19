package;

import flixel.FlxState;
import flixel.input.gamepad.lists.FlxGamepadButtonList;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var hero:Hero;
	var helloWorld:FlxText;

	override public function create()
	{
		super.create();
		hero = new Hero(300, 300);
		add(hero);

		helloWorld = new FlxText(200, 200, 0, "Hello, World!", 30);
		helloWorld.setFormat("assets/PermanentMarker-Regular.ttf", 45, 0xffaa55);
		add(helloWorld);

		for (i in 0...10)
		{
			add(new ScreensaverHero(200, 200));
		}
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
