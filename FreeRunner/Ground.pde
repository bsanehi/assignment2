class Ground extends GameObject {
  
  PShape part1, part2, part3, part4, bump;
  
  Ground(){
    
    part1 = createShape();
    part1.beginShape();
    part1.noStroke();
    part1.fill(255,255,255);
    part1.vertex(5, 0);
    part1.vertex(5, 5);
    part1.vertex(55, 5);
    part1.vertex(55, 0);
    part1.vertex(55, -2);
    part1.vertex(51, -2);
    part1.vertex(51, -6);
    part1.vertex(43, -6);
    part1.vertex(43, -12);
    part1.vertex(38, -12);
    part1.vertex(38, -15);
    part1.vertex(22, -15);
    part1.vertex(22, -12);
    part1.vertex(16, -12);
    part1.vertex(16, -8);
    part1.vertex(10, -8);
    part1.vertex(10, -6);
    part1.vertex(8, -6);
    part1.vertex(8, -2);
    part1.vertex(5, -2);
    part1.vertex(5, 0);
    part1.endShape();
    
    part2 = createShape();
    part2.beginShape();
    part2.noStroke();
    part2.fill(83,83,83);
    part2.vertex(0, 0);
    part2.vertex(0, -5);
    part2.vertex(5, -5);
    part2.vertex(5, -10);
    part2.vertex(12, -10);
    part2.vertex(12, -15);
    part2.vertex(18, -15);
    part2.vertex(18, -20);
    part2.vertex(40, -20);
    part2.vertex(40, -15);
    part2.vertex(45, -15);
    part2.vertex(45, -10);
    part2.vertex(52, -10);
    part2.vertex(52, -5);
    part2.vertex(60, -5);
    part2.vertex(60, 0);
    part2.vertex(48, 0);
    part2.vertex(48, -4);
    part2.vertex(40, -4);
    part2.vertex(40, -10);
    part2.vertex(36, -10);
    part2.vertex(36, -13);
    part2.vertex(22, -13);
    part2.vertex(22, -10);
    part2.vertex(17, -10);
    part2.vertex(17, -5);
    part2.vertex(10, -5);
    part2.vertex(10, 0);
    part2.vertex(0, 0);
    part2.endShape();
    
    part3 = createShape();
    part3.beginShape();
    part3.noStroke();
    part3.fill(255,255,255);
    part3.vertex(125, -5);
    part3.vertex(125, 0);
    part3.vertex(135, 0);
    part3.vertex(135, 5);
    part3.vertex(175, 5);
    part3.vertex(175, 0);
    part3.vertex(185, 0);
    part3.vertex(185, -5);
    part3.endShape();
    
    part4 = createShape();
    part4.beginShape();
    part4.noStroke();
    part4.fill(83,83,83);
    part4.vertex(120, -5);
    part4.vertex(125, -5);
    part4.vertex(125, 0);
    part4.vertex(135, 0);
    part4.vertex(135, 5);
    part4.vertex(175, 5);
    part4.vertex(175, 0);
    part4.vertex(185, 0);
    part4.vertex(185, -5);
    part4.vertex(185, -5);
    part4.vertex(190, -5);
    part4.vertex(190, 5);
    part4.vertex(180, 5);
    part4.vertex(180, 10);
    part4.vertex(130, 10);
    part4.vertex(130, 5);
    part4.vertex(120, 5);
    part4.vertex(120, -5);
    part4.endShape();
    
    
  }
  
  
  void update(){
    
  };
  
  void render(){
       
  };
  
  
}