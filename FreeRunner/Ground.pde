class Ground extends GameObject {
  
  PShape line;
  
  float dirt_y;
  
  Ground(float x, float y, float scale){
    
     super(x,y,scale);
    
     this.dirt_y = y;
    
     line = createShape();
     line.beginShape();
     line.noStroke();
     line.fill(83,83,83);
     line.vertex(0, 0);
     line.vertex(width, 0);
     line.vertex(width, 1);
     line.vertex(0, 1);
     line.vertex(0, 0);
     line.endShape();
      
    
     objects.addChild(line); // 0
    
    
     super.speed = 0;
     
     for(int i=0; i< 30; i++){
       
       Dirt dirt = new Dirt();
       dirt.pos.x = random(0, width);
       dirt.pos.y = random(dirt_y + 4,dirt_y + 15);
       dirt.scale = random(1,2);
       gameObjects.add(dirt);
       
     }
     

     
  }
  
  
  void update(){
    
    for(int i = 0; i<2; i++){
      
      float temp = random(dirt_y + (random(2,6)),dirt_y + (random(4,14)));
      
      super.speed = 6;
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
    
   //   shape(bump, 100, super.pos.y);
    
      if(frameCount % 10 == 0){
        update();
      }

      shape(objects, super.pos.x, super.pos.y);
  };
  
  
}