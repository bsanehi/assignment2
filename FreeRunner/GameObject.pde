abstract class GameObject
{
  PShape objects;
  PVector pos;
  float save_pos;
  
  PFont font;
  String text;
  float speed = 5.0f;
  color c; 
  float scale;
  
  final float GRAVITY = 6;
  final float INITIAL_JUMP_VELOCITY = 40;
  final float ACCELERATION = 0.001;
  final int MIN_JUMP_HEIGHT = 35;

 
  GameObject()
  {
    // Constructor chaining
     this(width * 0.5f, height  * 0.5f, 50 );   
  }
  
  
  GameObject(float x, float y, float scale)
  {
    pos = new PVector(x, y);
    objects = createShape(GROUP);
    this.objects.scale(scale);  
    this.scale = scale;
  }
  
  abstract void update();  
  abstract void render();
  
}