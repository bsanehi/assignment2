class Cactus extends GameObject{
  
  PShape part1, part2, part3, part4, part5, part6, part7, part8, part9, part10, part11, part12, part1_w_bg,  part4_w_bg, part7_w_bg, part10_w_bg;
  
  Cactus(float y, float scale){
    
    this.scale = scale;
   // this.speed = speed;
   // this.pos.x = x;
    this.pos.y = y;
    
    part1_w_bg = createShape();
    part1_w_bg.beginShape();
    part1_w_bg.noStroke();
    part1_w_bg.fill(255,255,255);
    part1_w_bg.vertex(40,170);
    part1_w_bg.vertex(-10,170);
    part1_w_bg.vertex(-10,270);
    part1_w_bg.vertex(40,270);
    part1_w_bg.endShape();
    
    part1 = createShape();
    part1.beginShape();
    part1.noStroke();
    part1.fill(83,83,83);
    part1.vertex(0, 10);
    part1.vertex(30, 10);
    part1.vertex(30, 15);
    part1.vertex(35, 15);
    part1.vertex(35, 270);
    part1.vertex(-5, 270);
    part1.vertex(-5,15);
    part1.vertex(0,15);
    part1.endShape();
  
    part2 = createShape();
    part2.beginShape();
    part2.noStroke();
    part2.fill(83,83,83);
    part2.vertex(30,160);
    part2.vertex(50,160);
    part2.vertex(50,80);
    part2.vertex(55,80);
    part2.vertex(55,75);
    part2.vertex(75,75);
    part2.vertex(75,80);
    part2.vertex(80,80);
    part2.vertex(80,160);
    part2.vertex(73,160);
    part2.vertex(73,165);
    part2.vertex(65,165);
    part2.vertex(65,170);
    part2.vertex(58,170);
    part2.vertex(58,175);
    part2.vertex(58,180);
    part2.vertex(30,180); 
    part2.endShape();
    
    part3 = createShape();
    part3.beginShape();
    part3.noStroke();
    part3.fill(83,83,83);
    part3.vertex(-10,160);
    part3.vertex(-20,160);
    part3.vertex(-20,90);
    part3.vertex(-25,90);
    part3.vertex(-25,85);
    part3.vertex(-50,85);
    part3.vertex(-50,90);
    part3.vertex(-55,90);
    part3.vertex(-55,160);
    part3.vertex(-50,160);
    part3.vertex(-50,165);
    part3.vertex(-45,165);
    part3.vertex(-45,170);
    part3.vertex(-40,170);
    part3.vertex(-40,175);
    part3.vertex(-35,175);
    part3.vertex(-35,180);
    part3.vertex(0,180);
    part3.vertex(0,160);
    part3.vertex(-15,160);
    part3.endShape();
    
    
    part4_w_bg = createShape();
    part4_w_bg.beginShape();
    part4_w_bg.noStroke();
    part4_w_bg.fill(255,255,255);
    part4_w_bg.vertex(115,180);
    part4_w_bg.vertex(155,180);
    part4_w_bg.vertex(155,270);
    part4_w_bg.vertex(115,270);
    part4_w_bg.endShape();
    
    part4 = createShape();
    part4.beginShape();
    part4.noStroke();
    part4.fill(83,83,83);
    part4.vertex(120, 30);
    part4.vertex(125, 30);
    part4.vertex(125, 25);
    part4.vertex(145, 25);
    part4.vertex(145, 30);
    part4.vertex(150, 30);
    part4.vertex(150, 270);
    part4.vertex(120, 270);
    part4.vertex(120,30); 
    part4.endShape();
    
    part5 = createShape();
    part5.beginShape();
    part5.noStroke();
    part5.fill(83,83,83);
    part5.vertex(125,170);
    part5.vertex(110,170);
    part5.vertex(110,110);
    part5.vertex(105,110);
    part5.vertex(105,105);
    part5.vertex(95,105);
    part5.vertex(95,110);
    part5.vertex(90,110);
    part5.vertex(90,175);
    part5.vertex(95,175);
    part5.vertex(95,180);
    part5.vertex(100,180);
    part5.vertex(100,185);
    part5.vertex(105,185);
    part5.vertex(105,190);
    part5.vertex(125,190);
    part5.vertex(125,170);
    part5.endShape();
    
    part6 = createShape();
    part6.beginShape();
    part6.noStroke();
    part6.fill(83,83,83);
    part6.vertex(145,110);
    part6.vertex(165,110);
    part6.vertex(165,60);
    part6.vertex(170,60);
    part6.vertex(170,55);
    part6.vertex(175,55);
    part6.vertex(175,60);
    part6.vertex(180,60);
    part6.vertex(180,115);
    part6.vertex(175,115);
    part6.vertex(175,120);
    part6.vertex(170,120);
    part6.vertex(170,125);
    part6.vertex(145,125);
    part6.vertex(145,110);
    part6.endShape();
    
    
    part7_w_bg = createShape();
    part7_w_bg.beginShape();
    part7_w_bg.noStroke();
    part7_w_bg.fill(255,255,255);
    part7_w_bg.vertex(190,190);
    part7_w_bg.vertex(215,190);
    part7_w_bg.vertex(215,270);
    part7_w_bg.vertex(190,270);
    part7_w_bg.endShape();
    
    part7 = createShape();
    part7.beginShape();
    part7.noStroke();
    part7.fill(83,83,83);
    part7.vertex(195,270);
    part7.vertex(195,130);
    part7.vertex(200,130);
    part7.vertex(200,125);
    part7.vertex(205,125);
    part7.vertex(205,130);
    part7.vertex(210,130);
    part7.vertex(210,270);
    part7.vertex(195,270);
    part7.endShape();
    
    part8 = createShape();
    part8.beginShape();
    part8.noStroke();
    part8.fill(83,83,83);
    part8.vertex(170,200);
    part8.vertex(170,160);
    part8.vertex(175,160);
    part8.vertex(175,155);
    part8.vertex(180,155);
    part8.vertex(180,160);
    part8.vertex(185,160);
    part8.vertex(185,200);
    part8.vertex(200,200);
    part8.vertex(200,215);
    part8.vertex(185,215);
    part8.vertex(185,210);
    part8.vertex(180,210);
    part8.vertex(180,205);
    part8.vertex(175,205);
    part8.vertex(175,200);
    part8.vertex(170,200);
    part8.endShape();
    
    part9 = createShape();
    part9.beginShape();
    part9.noStroke();
    part9.fill(83,83,83);
    part9.vertex(220,200);
    part9.vertex(220,160);
    part9.vertex(225,160);
    part9.vertex(225,155);
    part9.vertex(230,155);
    part9.vertex(230,160);
    part9.vertex(235,160);
    part9.vertex(235,200);
    part9.vertex(230,200);
    part9.vertex(230,200);
    part9.vertex(230,205);
    part9.vertex(225,205);
    part9.vertex(225,210);
    part9.vertex(205,210);
    part9.vertex(205,200);
    part9.vertex(220,200);
    part9.endShape();
    
    
    part10_w_bg = createShape();
    part10_w_bg.beginShape();
    part10_w_bg.noStroke();
    part10_w_bg.fill(255,255,255);
    part10_w_bg.vertex(270,170);
    part10_w_bg.vertex(320,170);
    part10_w_bg.vertex(320,270);
    part10_w_bg.vertex(270,270);
    part10_w_bg.endShape();
    
    part10 = createShape();
    part10.beginShape();
    part10.noStroke();
    part10.fill(83,83,83);
    part10.vertex(280, 10);
    part10.vertex(310, 10);
    part10.vertex(310, 15);
    part10.vertex(315, 15);
    part10.vertex(315, 270);
    part10.vertex(275, 270);
    part10.vertex(275,15);
    part10.vertex(280,15);
    part10.endShape();
    
    part11 = createShape();
    part11.beginShape();
    part11.noStroke();
    part11.fill(83,83,83);
    part11.vertex(280,100);
    part11.vertex(260,100);
    part11.vertex(260,40);
    part11.vertex(255,40);
    part11.vertex(255,35);
    part11.vertex(240,35);
    part11.vertex(240,40);
    part11.vertex(235,40);
    part11.vertex(235,105);
    part11.vertex(240,105);
    part11.vertex(240,110);
    part11.vertex(245,110);
    part11.vertex(245,115);
    part11.vertex(250,115);
    part11.vertex(250,120);
    part11.vertex(280,120);
    part11.vertex(280,100);
    part11.endShape();
    
    part12 = createShape();
    part12.beginShape();
    part12.noStroke();
    part12.fill(83,83,83);
    part12.vertex(310,160);
    part12.vertex(330,160);
    part12.vertex(330,80);
    part12.vertex(335,80);
    part12.vertex(335,75);
    part12.vertex(355,75);
    part12.vertex(355,80);
    part12.vertex(360,80);
    part12.vertex(360,160);
    part12.vertex(353,160);
    part12.vertex(353,165);
    part12.vertex(345,165);
    part12.vertex(345,170);
    part12.vertex(338,170);
    part12.vertex(338,175);
    part12.vertex(338,180);
    part12.vertex(310,180); 
    part12.endShape();
    
    
    /*
    int i = (int) random(1, 8);
    switch (i)
    {
      
      case 1:
        objects  = new PShape();
        objects.addChild(part1_w_bg);
        objects.addChild(part1); 
        objects.addChild(part2); 
        objects.addChild(part3); 
        objects.scale(scale);
        break;
        
      case 2:
        objects  = new PShape();
        objects.addChild(part4_w_bg);
        objects.addChild(part4); 
        objects.addChild(part5); 
        objects.addChild(part6); 
        objects.scale(scale);
        break;
        
      case 3:
        objects  = new PShape();
        objects.addChild(part7_w_bg);
        objects.addChild(part7); 
        objects.addChild(part8); 
        objects.addChild(part9); 
        objects.scale(scale);
        break;
        
      case 4:
        objects = new PShape();
        objects.addChild(part10_w_bg);
        objects.addChild(part10); 
        objects.addChild(part11); 
        objects.addChild(part12); 
        objects.scale(scale);
        break;
        
      case 5:
        objects  = new PShape();
        objects.addChild(part7_w_bg);
        objects.addChild(part7); 
        objects.addChild(part8); 
        objects.addChild(part9);
        objects.addChild(part10_w_bg);
        objects.addChild(part10); 
        objects.addChild(part11); 
        objects.addChild(part12); 
        objects.scale(scale);
        break;
        
      case 6:
        objects  = new PShape();
        objects.addChild(part1_w_bg);
        objects.addChild(part1); 
        objects.addChild(part2); 
        objects.addChild(part3);
        objects.addChild(part4_w_bg);
        objects.addChild(part4); 
        objects.addChild(part5); 
        objects.addChild(part6); 
        objects.scale(scale);
        break;
        
      case 7:
        objects  = new PShape();
        objects.addChild(part1_w_bg);
        objects.addChild(part1); 
        objects.addChild(part2); 
        objects.addChild(part3); 
        objects.addChild(part4_w_bg);
        objects.addChild(part4); 
        objects.addChild(part5); 
        objects.addChild(part6); 
        objects.addChild(part7_w_bg);
        objects.addChild(part7); 
        objects.addChild(part8); 
        objects.addChild(part9); 
        objects.scale(scale);
        break;
        
      case 8: 
        objects = new PShape();
        objects.addChild(part1_w_bg);
        objects.addChild(part1); 
        objects.addChild(part2); 
        objects.addChild(part3); 
        objects.addChild(part4_w_bg);
        objects.addChild(part4); 
        objects.addChild(part5); 
        objects.addChild(part6); 
        objects.addChild(part7_w_bg);
        objects.addChild(part7); 
        objects.addChild(part8); 
        objects.addChild(part9); 
        objects.addChild(part10_w_bg);
        objects.addChild(part10); 
        objects.addChild(part11); 
        objects.addChild(part12); 
        objects.scale(scale);
        break;
        
        
    }// end switch */
    
    
        objects = new PShape();
        objects.addChild(part1_w_bg);
        objects.addChild(part1); 
        objects.addChild(part2); 
        objects.addChild(part3); 
        objects.addChild(part4_w_bg);
        objects.addChild(part4); 
        objects.addChild(part5); 
        objects.addChild(part6); 
        objects.addChild(part7_w_bg);
        objects.addChild(part7); 
        objects.addChild(part8); 
        objects.addChild(part9); 
        objects.addChild(part10_w_bg);
        objects.addChild(part10); 
        objects.addChild(part11); 
        objects.addChild(part12); 
        objects.scale(scale);
    
    
  }// end Cactus()
  
  
   void speed(float game_speed){
    this.speed = game_speed;
  }
  
  
  
  void update(){
    
    pos.x -= this.speed;
    
    if (pos.x < -50)
    {
       gameObjects.remove(this);
    }
    
  };
  
  
  
  void render(){
      shape(objects, pos.x, pos.y);
  };
  
  
}// end Cactus class