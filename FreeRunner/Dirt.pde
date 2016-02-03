class Dirt extends GameObject {
  
  
  PShape dirt_object;
  
  Dirt(float x, float y, float speed, color c){
    
     this.pos.x = x;
     this.pos.y = y;
     this.speed = speed;
     this.c = c;
    
     dirt_object = createShape(ELLIPSE,0,0, 1, 1);
     
     objects = createShape(GROUP);
     objects.addChild(dirt_object);
    
  }
  
  
  void speed(float game_speed){
    this.speed = game_speed;
  }
  
  
  void update(){
    
    pos.x -= this.speed;

    if (pos.x < 0)
    {
       gameObjects.remove(this);
    }
  
  };
  
  
  void render(){
      shape(objects,pos.x,pos.y);
  };
  
}// end Dirt class