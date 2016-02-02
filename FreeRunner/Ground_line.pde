class Ground_line extends Ground{
  
  
   PShape line;
   
   Ground_line(float x, float y, float scale){
    
       pos.x = x;
       pos.y = y;
       
     
     
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
   }
   
   
  void render(){
    
      shape(objects, super.pos.x, super.pos.y); 
     
  };
  
  
  void update(){
    
    // shape(objects, super.pos.x, super.pos.y); 
     
  };
  
  
}// end Ground_line class