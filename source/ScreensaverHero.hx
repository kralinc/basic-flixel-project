package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.math.FlxPoint;
import flixel.util.FlxColor;

class ScreensaverHero extends FlxSprite
{
	static inline var SPEED:Float = 100;
	static inline var SIZE:Int = 20;

	public function new(?x:Float = 0, ?y:Float = 0)
	{
		super(x, y);
		makeGraphic(SIZE, SIZE);

		var startDirection:Float = FlxG.random.int(0, 360);
		velocity.set(SPEED, 0);
		velocity.rotate(FlxPoint.weak(), startDirection);
	}

	public override function update(elapsed:Float)
	{
		if (FlxG.keys.pressed.SPACE)
		{
			velocity.set(velocity.x * FlxG.random.getObject([-1, 1]), velocity.y * FlxG.random.getObject([-1, 1]));
		}

		if (x >= FlxG.width)
		{
			x = 0 - SIZE;
		}
		else if (x <= 0 - SIZE)
		{
			x = FlxG.width;
		}

		if (y >= FlxG.height)
		{
			y = 0 - SIZE;
		}
		else if (y <= 0 - SIZE)
		{
			y = FlxG.height;
		}

		var red:Int = Std.int(x / FlxG.width * 255);
		var green:Int = Std.int(y / FlxG.height * 255);
		var newColor:FlxColor = new FlxColor();
		this.color = newColor.setRGB(red, green, 100);
		super.update(elapsed);
	}
}
