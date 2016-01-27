class T_rex extends Sprite {
  
  char jump;
  char duck;
  int running;
  
  T_rex(float startX, float startY, float scale, char jump, char duck){
    
      // call Sprite
      super(startX, startY, scale);
      
      this.jump = jump;
      this.duck = duck;
      
      objects.addChild(head); // 0
      objects.addChild(mouth1);
      objects.addChild(eye1);
      objects.addChild(body); // 1
      objects.addChild(legs1); // 2
      running = 0;
  }
  
  
  void update(){

  }
  
  
  void render(){
    
      shape(objects, pos.x, pos.y);

  }
  
  
  void run(){
    
    objects = createShape(GROUP);
    objects.scale(scale);  
    objects.addChild(head); // 0
    objects.addChild(mouth1);
    objects.addChild(eye1);
    objects.addChild(body); // 1
    
    if(running == 0){
      
      running = 1;
      objects.addChild(legs1); // 2
      
    }
    else{
       //  running = false;
      objects.addChild(legs2); // 2
    }
    
   
  }
  
  
  void jump(){
    
  }
  
  
  void duck(){
    
  }
  
  
  
}// end T_rex