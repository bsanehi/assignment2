class Ground extends GameObject {
  
  
  float dirt_y;
  
  Ground(){
    // do nothing
  }
  
  
  Ground(float x, float y, float scale){
    
     super(x,y,scale);
     
     this.pos.x = x;
     this.pos.y = y;
     this.scale = scale;
     
     this.dirt_y = y;
    
     // speed = 22;
      
      Bumps bump = new Bumps(0.3);
      bump.pos.x = random(width,width + 200);
      bump.pos.y = dirt_y + 1;
      bump.speed = this.speed;
      gameObjects.add(bump);
      
      Ground_line  gr_line = new Ground_line(x,y,scale);
      gameObjects.add(gr_line);
     
     
     for(int i=0; i< 30; i++){
       
       Dirt dirt = new Dirt();
       dirt.pos.x = random(0, width);
       dirt.pos.y = random(dirt_y + 4,dirt_y + 15);
       dirt.scale = random(1,2);
       dirt.speed = this.speed;
       gameObjects.add(dirt);
       
     }
     
  }
  
  
  void update(){
    
     // speed = 15;

      float temp = random(dirt_y + (random(2,6)),dirt_y + (random(4,14)));
      
      if(frameCount % 8 == 0 ){
        Dirt dirt = new Dirt();
        dirt.pos.x = random(width, width + (random(0,100)) );
        dirt.pos.y = temp;
        dirt.scale = random(1,3);
        dirt.scale_dirt = random(0,1);
        dirt.speed = this.speed;
        gameObjects.add(dirt);
      }
      
    if( (frameCount % (int)random(65,95)) == 0 ){
      Bumps bump = new Bumps(0.3);
      bump.pos.x = random(width,width + 200);
      bump.pos.y = dirt_y + 1;
      bump.speed = this.speed;
      gameObjects.add(bump);
    }
    
      Ground_line  gr_line = new Ground_line(pos.x,pos.y,scale);
      gameObjects.add(gr_line);
    
  };
     
  void render(){
    
      if(frameCount % 10 == 0){
        update();
      }
            
      shape(objects, super.pos.x, super.pos.y);
  };
  
  
}// end Ground class