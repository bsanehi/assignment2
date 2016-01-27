class Cloud extends GameObject {
  
  
  PShape cloud1, cloud2, cloud3, cloud4, cloud5, cloud6;
  
  Cloud(){
    
    cloud1 = createShape();
    cloud1.beginShape();
    cloud1.strokeWeight(2);
    cloud1.vertex(0, 0);
    cloud1.vertex(5, 0);
    cloud1.vertex(5 ,-5);
    cloud1.vertex(10, -5);
    cloud1.endShape();
    
    cloud2 = createShape();
    cloud2.beginShape();
    cloud2.strokeWeight(2);
    cloud2.vertex(17, -5);
    cloud2.vertex(22, -5);
    cloud2.vertex(22, -14);
    cloud2.vertex(27, -14);
    cloud2.vertex(27, -20);
    cloud2.vertex(55, -20);
    cloud2.vertex(55, -20);
    cloud2.vertex(55, -26);
    cloud2.vertex(60, -26);
    cloud2.vertex(60, -32);
    cloud2.vertex(72, -32);
    cloud2.vertex(72, -43);
    cloud2.vertex(81, -43);
    cloud2.vertex(81, -49);
    cloud2.vertex(87, -49);
    cloud2.vertex(87, -55);
    cloud2.vertex(105, -55);
    cloud2.vertex(105, -59); 
    cloud2.vertex(116, -59); 
    cloud2.vertex(116, -55); 
    cloud2.vertex(123, -55); 
    cloud2.vertex(123, -49); 
    cloud2.vertex(128, -49); 
    cloud2.vertex(128, -38); 
    cloud2.endShape();
    
    cloud3 = createShape();
    cloud3.beginShape();
    cloud3.strokeWeight(2);
    cloud3.vertex(130, -43);
    cloud3.vertex(137, -43);
    cloud3.vertex(137, -38);
    cloud3.vertex(152, -38);
    cloud3.vertex(152, -30);
    cloud3.vertex(162, -30);
    cloud3.vertex(162, -24);
    cloud3.vertex(170, -24);
    cloud3.vertex(170, -15);
    cloud3.vertex(177, -15);
    cloud3.vertex(177, -10);
    cloud3.endShape();
    
    cloud4 = createShape();
    cloud4.beginShape();
    cloud4.strokeWeight(2);
    cloud4.vertex(179, -8);
    cloud4.vertex(179, -3);
    cloud4.vertex(45, -3);
    cloud4.endShape();
    
    cloud5 = createShape();
    cloud5.beginShape();
    cloud5.strokeWeight(2);
    cloud5.vertex(125, -37);
    cloud5.endShape();
    
  }

  void update(){
    
    
  };
  
  void render(){
       
  };
  
}