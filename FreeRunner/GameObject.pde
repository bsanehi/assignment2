// This is the base class! 
// Everything in the scene will extend GameObject
// An abstract class means that:
// You can't instantiate it
// You must make a subclass and instantiate that
// Some of the methods can be abstract. That means they have no body
// If the subclass doesn't implement the abstract methods, then it too is abstract
// You can use abstract classes to ensure that a class has an implementation of the abstract methods
abstract class GameObject
{
  PShape objects;
  PVector pos;
  PFont font;
  String text;
  float speed = 5.0f;
  color c; 
  float scale;
 
  GameObject()
  {
    // Constructor chaining
    this(width * 0.5f, height  * 0.5f, 50);   
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