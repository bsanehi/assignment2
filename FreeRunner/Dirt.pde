class Dirt extends GameObject {
  
  PShape dirt_object;
  
  Dirt(float x, float y, float speed, color c){
    
     super(x,y,0,c);
    
     this.speed = speed;
     
     dirt_object = createShape(RECT,0,0, ((int)random(1,4)), 1);
     
     fill(c);
     objects = createShape(GROUP);
     objects.addChild(dirt_object);
     
  }
  
  
  void speed(float game_speed){
    this.speed = game_speed;
  }
  
  
  void update(){
    
    fill(c);
    
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