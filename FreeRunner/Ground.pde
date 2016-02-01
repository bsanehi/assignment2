class Ground extends GameObject {
  
  
  float dirt_y;
  
  Ground(){
    
  }
  
  Ground(float x, float y, float scale){
    
     super(x,y,scale);
    
     this.dirt_y = y;
    
     //super.speed = 0;
     
    //  Ground_line  gr_line = new Ground_line(x,y,scale);
    //  gameObjects.add();
     
     
     for(int i=0; i< 30; i++){
       
       Dirt dirt = new Dirt();
       dirt.pos.x = random(0, width);
       dirt.pos.y = random(dirt_y + 4,dirt_y + 15);
       dirt.scale = random(1,2);
       gameObjects.add(dirt);
       
     }
     
      Bumps bump = new Bumps(0.3);
      bump.pos.x = random(width,width + 200);
      bump.pos.y = dirt_y + 1;
      gameObjects.add(bump);
     
  }
  
  
  void update(){
    
      float temp = random(dirt_y + (random(2,6)),dirt_y + (random(4,14)));
      
      if(frameCount % 8 == 0 ){
        Dirt dirt = new Dirt();
        dirt.pos.x = random(width, width + (random(0,100)) );
        dirt.pos.y = temp;
        dirt.scale = random(1,3);
        dirt.scale_dirt = random(0,1);
        gameObjects.add(dirt);
      }
      
    if( (frameCount % (int)random(45,70)) == 0 ){
      Bumps bump = new Bumps(0.3);
      bump.pos.x = random(width,width + 200);
      bump.pos.y = dirt_y + 1;
      gameObjects.add(bump);
    }
    
  };
     
  void render(){
    
      if(frameCount % 10 == 0){
        update();
      }
            
      shape(objects, super.pos.x, super.pos.y);
  };
  
  
}