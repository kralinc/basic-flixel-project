package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.math.FlxPoint;

class Hero extends FlxSprite
{
	var speed:Float;

	public function new(x:Float, y:Float, ?speed:Float = 50)
	{
		super(x, y);
		this.speed = speed;
		loadGraphic(AssetPaths.benny8bit__png, true, 16, 20);
	}

	public override function update(elapsed:Float)
	{
		super.update(elapsed);
		velocity.set(speed, 0);
		velocity.rotate(FlxPoint.weak(), FlxG.random.int(0, 8) * 45);
	}
}
