abstract class GameObject
{
  
  PShape objects;
  PVector pos;
  
  String text;
  
  float speed = 1;
  color c; 
  
  float scale;
  
  AudioPlayer player1;
  AudioPlayer player2;
  
  final float GRAVITY = 8;
  
  GameObject()
  {
     // Constructor chaining
     this(width * 0.5f, height  * 0.5f, 50 , color(83,83,83) );   
  } 
  
  
  GameObject(float x, float y, float scale, color c)
  {
    objects = createShape(GROUP);
    objects.scale(scale);  
    pos = new PVector(x, y);
    this.scale = scale;
    this.c = c;
  }
  
  
  abstract void update();  
  abstract void render();
  
}