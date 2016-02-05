abstract class GameObject
{
  
  PShape objects;
  PVector pos;
  float save_pos;
  
  PFont font;
  String text;
  float speed;
  
  color c; 
  float scale;
  float scale_dirt;
  
  AudioPlayer player1;
  AudioPlayer player2;
  
  final float GRAVITY = 8;
  final float INITIAL_JUMP_VELOCITY = 12;
  final int MIN_JUMP_HEIGHT = 120;
  
  
  
  GameObject()
  {
     //Constructor chaining
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