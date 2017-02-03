package wings.core;

@:expose
interface ISimpleDrawingContext
{
	public function clear(): Void;

	public function lineStyle(thickness:Float, color:Int, ?alpha:Float): Void;

	public function beginFill(color:Int, ?alpha:Float): Void;

	public function endFill(): Void;

	public function moveTo(x:Float, y:Float): Void;

	public function lineTo(x:Float, y:Float): Void;

	public function quadTo( cx: Float, cy: Float, ax: Float, ay: Float ): Void;

	public function drawCircle(cx:Float, cy:Float, radius:Float): Void;

	public function drawRect( x: Float, y: Float, width: Float, height: Float): Void;

	public function drawEquilaterialTri( x: Float, y: Float, radius: Float, direction: Float ): Void;

	public function drawTri( points: Array<Float> ): Void;
}
