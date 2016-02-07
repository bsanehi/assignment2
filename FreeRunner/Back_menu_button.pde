class Back_menu_button extends Game_over {
  
  PShape part3,part4;
  
  Back_menu_button(){
    
    part1 = createShape();
    part1.beginShape();
    part1.noStroke();
    part1.fill(83,83,83);
    part1.vertex(0,0);
    part1.vertex(70,0);
    part1.vertex(70,2);
    part1.vertex(72,2);
    part1.vertex(72,4);
    part1.vertex(74,4);
    part1.vertex(74,65);
    part1.vertex(72,65);
    part1.vertex(72,67);
    part1.vertex(70,67);
    part1.vertex(70,69);
    part1.vertex(0,69);
    part1.vertex(0,67);
    part1.vertex(-2,67);
    part1.vertex(-2,65);
    part1.vertex(-4,65);
    part1.vertex(-4,4);
    part1.vertex(-2,4);
    part1.vertex(-2,2);
    part1.vertex(0,2);
    part1.endShape();
       
     
    part2 = createShape();
    part2.beginShape();
   // part2.noStroke();
    part2.fill(255,255,255);
    part2.vertex(10,15);
    part2.vertex(60,15);
    part2.vertex(60,20);
    part2.vertex(10,20);
    part2.vertex(10,15);
    part2.endShape();
    
    
    part3 = createShape();
    part3.beginShape();
   // part3.noStroke();
    part3.fill(255,255,255);
    part3.vertex(10,32);
    part3.vertex(60,32);
    part3.vertex(60,37);
    part3.vertex(10,37);
    part3.vertex(10,32);
    part3.endShape();
    
    
    part4 = createShape();
    part4.beginShape();
   // part4.noStroke();
    part4.fill(255,255,255);
    part4.vertex(10,50);
    part4.vertex(60,50);
    part4.vertex(60,55);
    part4.vertex(10,55);
    part4.vertex(10,50);
    part4.endShape();
    
    this_width = part1.width;
    this_height = part1.height;
    
    objects = createShape(GROUP);
    objects.addChild(part1);
    objects.addChild(part2);
    objects.addChild(part3);
    objects.addChild(part4);
    objects.scale(0.4);
    
  }
  
  
  void render(){
    
     shape(objects, width/5 - (this_width/2), height/5 - (this_height/2)); 
     
  }
  
  void remove_gameover(){
    
    //gameObjects.remove(this);
  }
  
  void update(){
    
    
    
  }
  
  
}// end Back_menu_button