class Ground_line extends Ground{
  
   PShape line;
   
   Ground_line(){
    
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
   }
   
   
  void render(){
    
     shape(objects, super.pos.x, super.pos.y);
     
  };
  
  
}// end Ground_line class