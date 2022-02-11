package;

import flixel.FlxState;

class PlayState extends FlxState
{
	var hero:Hero;

	override public function create()
	{
		super.create();
		hero = new Hero(300, 300);
		add(hero);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
