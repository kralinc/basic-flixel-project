package;

import flixel.FlxG;
import flixel.FlxSprite;

class ControllableHero extends FlxSprite
{
	static inline var SPEED:Float = 150;

	public function new(?x:Float, ?y:Float)
	{
		super(x, y);
		makeGraphic(15, 30);
	}

	public override function update(elapsed:Float)
	{
		updateMovement();
		super.update(elapsed);
	}

	private function updateMovement()
	{
		var up:Int = 0;
		var down:Int = 0;
		var left:Int = 0;
		var right:Int = 0;

		up = FlxG.keys.anyPressed([UP, W]) ? 1 : 0;
		down = FlxG.keys.anyPressed([DOWN, S]) ? 1 : 0;
		left = FlxG.keys.anyPressed([LEFT, A]) ? 1 : 0;
		right = FlxG.keys.anyPressed([RIGHT, D]) ? 1 : 0;

		velocity.set((right - left) * SPEED, (down - up) * SPEED);
	}
}
