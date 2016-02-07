class Mushroom extends GameObject {
  
  PShape part1, part2, part3, part4, part5, part6, part7, part8, part9;
  
  Mushroom(float x, float y, float scale){
    
    super(x,y,scale,color(83,83,83));
    
    part1 = createShape();
    part1.beginShape();
    part1.noStroke();
    part1.fill(255,1,1);
    part1.vertex(35,50);
    part1.vertex(-20,50);
    part1.vertex(-20,55);
    part1.vertex(-25,55);
    part1.vertex(-25,50);
    part1.vertex(-30,50);
    part1.vertex(-30,35);
    part1.vertex(-25,35);
    part1.vertex(-25,25);
    part1.vertex(-20,25);
    part1.vertex(-20,20);
    part1.vertex(-15,20);
    part1.vertex(-15,15);
    part1.vertex(-10,15);
    part1.vertex(-10,10);
    part1.vertex(-5,10);
    part1.vertex(-5,5);
    part1.vertex(0,5);
    part1.vertex(0,0);
    part1.vertex(20,0);
    part1.vertex(20,5);
    part1.vertex(25,5);
    part1.vertex(25,10);
    part1.vertex(30,10);
    part1.vertex(30,15);
    part1.vertex(35,15);
    part1.vertex(35,20);
    part1.vertex(40,20);
    part1.vertex(40,25);
    part1.vertex(45,25);
    part1.vertex(45,35);
    part1.vertex(50,35);
    part1.vertex(50,50);
    part1.vertex(45,50);
    part1.vertex(45,55);
    part1.vertex(35,55);
    part1.vertex(35,50);
    part1.vertex(35,50);  
    part1.endShape();
    
    part2 = createShape();
    part2.beginShape();
    part2.noStroke();
    part2.fill(220,220,220);
    part2.vertex(35,50);
    part2.vertex(20,50);
    part2.vertex(20,55);
    part2.vertex(35,55);
    part2.vertex(35,50);
    part2.endShape();
    
    part3 = createShape();
    part3.beginShape();
    part3.noStroke();
    part3.fill(230,230,230);
    part3.vertex(-20,50);
    part3.vertex(-5,50);
    part3.vertex(-5,50);
    part3.vertex(-5,55);
    part3.vertex(-20,55);
    part3.vertex(-20,50);
    part3.endShape();
    
    part4 = createShape();
    part4.beginShape();
    //part4.noStroke();
    part4.stroke(83,83,83);
    part4.fill(210,210,210);
    part4.vertex(-10,55);
    part4.vertex(-10,70);
    part4.vertex(-5,70);
    part4.vertex(-5,75);
    part4.vertex(25,75);
    part4.vertex(25,70);
    part4.vertex(30,70);
    part4.vertex(30,55);
    part4.endShape();
    
    part5 = createShape();
    part5.beginShape();
    part5.noStroke();
    part5.fill(255,255,255);
    part5.vertex(-15,30);
    part5.vertex(-10,30);
    part5.vertex(-10,35);
    part5.vertex(-5,35);
    part5.vertex(-5,40);
    part5.vertex(-10,40);
    part5.vertex(-10,45);
    part5.vertex(-15,45);
    part5.vertex(-15,30);
    part5.endShape();
    
    part6 = createShape();
    part6.beginShape();
    part6.noStroke();
    part6.fill(255,255,255);
    part6.vertex(15,10);
    part6.vertex(20,10);
    part6.vertex(20,15);
    part6.vertex(15,10);
    part6.endShape();
    
    part7 = createShape();
    part7.beginShape();
    part7.noStroke();
    part7.fill(255,255,255);
    part7.vertex(5,25);
    part7.vertex(15,25);
    part7.vertex(15,30);
    part7.vertex(5,30);
    part7.vertex(5,25);
    part7.endShape();  
    
    part8 = createShape();
    part8.beginShape();
    part8.noStroke();
    part8.fill(255,255,255);
    part8.vertex(-5,15);
    part8.vertex(0,15);
    part8.vertex(0,20);
    part8.vertex(-5,20);
    part8.vertex(-5,15);
    part8.endShape();  
    
    part9 = createShape();
    part9.beginShape();
    part9.noStroke();
    part9.fill(255,255,255);
    part9.vertex(25,35);
    part9.vertex(30,35);
    part9.vertex(30,40);
    part9.vertex(25,40);
    part9.vertex(25,35);
    part9.endShape();  
    
    
    objects.addChild(part1);
    objects.addChild(part2);
    objects.addChild(part3);
    objects.addChild(part4);
    objects.addChild(part5);
    objects.addChild(part6);
    objects.addChild(part7);
    objects.addChild(part8);
    objects.addChild(part9);
    
    player1 = minim.loadFile("sounds/secret.mp3");
    
  }
  
  void play_sound(){
     player1.rewind();
     player1.play();
  }
  
  
  void update(){
    
    pos.x -= this.speed;

    if (pos.x < 0)
    {
       mushroom_spawned = false;
       gameObjects.remove(this);
    }
    
  }
  

  void render(){
       shape(objects, this.pos.x, this.pos.y); 
  }
  
}// end Myshroom class