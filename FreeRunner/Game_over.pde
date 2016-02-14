class Game_over extends GameObject{
  
  PShape part1, part2;
  
  float this_width;
  float this_height;
  
  Game_over(){
    
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
    part2.noStroke();
    part2.fill(255,255,255);
    part2.vertex(28,10);
    part2.vertex(30,10);
    part2.vertex(30,12);
    part2.vertex(32,12);
    part2.vertex(32,14);
    part2.vertex(34,14);
    part2.vertex(34,16);
    part2.vertex(36,16);
    part2.vertex(36,18);
    part2.vertex(38,18);
    part2.vertex(38,20);
    part2.vertex(36,20);
    part2.vertex(36,22);
    part2.vertex(34,22);
    part2.vertex(34,24);
    part2.vertex(32,24);
    part2.vertex(32,26);
    part2.vertex(30,26);
    part2.vertex(30,28);
    part2.vertex(28,28);
    part2.vertex(28,22);
    part2.vertex(20,22);
    part2.vertex(20,45);
    part2.vertex(48,45);
    part2.vertex(48,22);
    part2.vertex(44,22);
    part2.vertex(44,16);
    part2.vertex(50,16);
    part2.vertex(50,18);
    part2.vertex(52,18);
    part2.vertex(52,20);
    part2.vertex(54,20);
    part2.vertex(54,47);
    part2.vertex(52,47);
    part2.vertex(52,49);
    part2.vertex(50,49);
    part2.vertex(50,51);
    part2.vertex(18,51);
    part2.vertex(18,49);
    part2.vertex(16,49);
    part2.vertex(16,47);
    part2.vertex(14,47);
    part2.vertex(14,20);
    part2.vertex(16,20);
    part2.vertex(16,18);
    part2.vertex(18,18);
    part2.vertex(18,16);
    part2.vertex(28,16);
    part2.vertex(28,10);
    part2.endShape();
    
    
    this_width = part1.width;
    this_height = part1.height;
    
    objects = createShape(GROUP);
    objects.addChild(part1);
    objects.addChild(part2);
    
  }// end Game_over()
  
  
  void render(){
    if(dead){
      
      fill(text_c);

       text("G A M E   O V E R",width/2, height *.3); 
            
       shape(objects, width/2 - (this_width/2), height/2 - (this_height/2)); 
    }
  }
  
  
  void update(){
    
  }
  
  
}// end Game_over class