class T_rex extends Sprite {
  
  char jump;
  char duck;
  
  T_rex(float startX, float startY, int scale, char jump, char duck){
    
      // call Sprite
      super(startX, startY, scale);
      
      this.jump = jump;
      this.duck = duck;
      
  }
  
  
  void update(){
      objects.addChild(head); // 0
      objects.addChild(body); // 1
      objects.addChild(legs1); // 2
  }
  
  
  void render(){
    
      shape(objects, pos.x, pos.y);

  }
  
  
  void run(){
    
  }
  
  
  void jump(){
    
  }
  
  
  void duck(){
    
  }
  
  
  
}// end T_rex