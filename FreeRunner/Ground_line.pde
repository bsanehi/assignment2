class Ground_line extends Ground{
  
  
   PShape line;
   
   Ground_line(float x, float y, float scale){
    
       this.pos.x = x;
       this.pos.y = y;
       
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
       
       objects.addChild(line); 
       objects.scale(scale);
       
   }// end Ground_line constructor
   
   
  void render(){
      shape(objects, super.pos.x, super.pos.y); 
  };
  
  
  void update(){
      gameObjects.remove(this); // remove it, new one Ground_line is called in Ground Update method
  };
  
  
}// end Ground_line class