abstract class GameObject
{
  
  PShape objects;
  PVector forward;
  
  PVector pos;
  float save_pos;
  float theta = 0.0f;
  
  PFont font;
  String text;
  float speed = 5.0f;
  color c; 
  float scale;
  float scale_dirt;
  
  
  final float GRAVITY = 8;
  final float INITIAL_JUMP_VELOCITY = 12;
  final float ACCELERATION = 0.001;
  final int MIN_JUMP_HEIGHT = 120;
  
  GameObject()
  {
    // Constructor chaining
     this(width * 0.5f, height  * 0.5f, 50 );   
  }
  
  
  GameObject(float x, float y, float scale)
  {
    pos = new PVector(x, y);
    forward = new PVector(-1, 0);
    objects = createShape(GROUP);
    this.objects.scale(scale);  
    this.scale = scale;
  }
  
  
  abstract void update();  
  abstract void render();
  
}