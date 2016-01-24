class Sprite extends GameObject{
  
  char jump;
  PShape dino, body, legs1, legs2, eye;

  Sprite(char jump,float size,float startX, float startY){
    
    super(startX, startY, size);
    this.jump = jump;
    
    dino = createShape(GROUP);
  
    body = createShape();
    body.beginShape();
    body.noStroke();
    body.fill(83,83,83);
    body.vertex(8, 0);
    body.vertex(55,0);
    body.vertex(55,10);
    body.vertex(65,10);
    body.vertex(65,40);
    body.vertex(30,40);
    body.vertex(30,47);
    body.vertex(50,47);
    body.vertex(50,55);
    body.vertex(25,55);
    body.vertex(25,72);
    body.vertex(45,72);
    body.vertex(45,85);
    body.vertex(39,85);
    body.vertex(39,78);
    body.vertex(25,78);
    body.vertex(25,100);
    body.vertex(18,100);
    body.vertex(18,110);
    body.vertex(10,110);
    body.vertex(10,118);
    body.vertex(3,118);
    body.vertex(3,128);
    body.vertex(-3,128);
    body.vertex(-11,128);
    body.vertex(-11,128);
    body.vertex(-25,128);
    body.vertex(-40,128);
    body.vertex(-50,128);
    body.vertex(-50,120);
    body.vertex(-60,120);
    body.vertex(-60,112);
    body.vertex(-70,112);
    body.vertex(-70,104);
    body.vertex(-70,104);
    body.vertex(-80,104);
    body.vertex(-80,96);
    body.vertex(-90,96);
    body.vertex(-90,65);
    body.vertex(-83,65);
    body.vertex(-83,78);
    body.vertex(-75,78);
    body.vertex(-75,85);
    body.vertex(-67,85);
    body.vertex(-67,92);
    body.vertex(-50,92);
    body.vertex(-50,85);
    body.vertex(-42,85);
    body.vertex(-42,78);
    body.vertex(-32,78);
    body.vertex(-32,70);
    body.vertex(-24,70);
    body.vertex(-24,62);
    body.vertex(-15,62);
    body.vertex(-15,55);
    body.vertex(-15,55);
    body.vertex(-5,55);
    body.vertex(-5,10);
    body.vertex(4,10);
    body.vertex(4,0);
    body.endShape();
    
    legs1 = createShape();
    legs1.beginShape();
    legs1.noStroke();
    legs1.fill(83,83,83);
    legs1.vertex(3,126);
    legs1.vertex(3,150);
    legs1.vertex(10,150);
    legs1.vertex(10,155);
    legs1.vertex(-3,155);
    legs1.vertex(-3,135);
    legs1.vertex(-11,135);
    legs1.vertex(-11,128);
    legs1.vertex(-25,128);
    legs1.vertex(-25,150);
    legs1.vertex(-18,150);
    legs1.vertex(-18,155);
    legs1.vertex(-31,155);
    legs1.vertex(-31,135);
    legs1.vertex(-40,135);
    legs1.vertex(-40,126);
    legs1.endShape();
    
    legs2 = createShape();
    legs2.beginShape();
    legs2.noStroke();
    legs2.fill(83,83,83);
    legs2.vertex(3,126);
    legs2.vertex(3,136);
    legs2.vertex(12,136);
    legs2.vertex(12,141);
    legs2.vertex(-3,141);
    legs2.vertex(-3,135);
    legs2.vertex(-11,135);
    legs2.vertex(-11,128);
    legs2.vertex(-25,128);
    legs2.vertex(-25,150);
    legs2.vertex(-18,150);
    legs2.vertex(-18,155);
    legs2.vertex(-31,155);
    legs2.vertex(-31,135);
    legs2.vertex(-40,135);
    legs2.vertex(-40,126); 
    legs2.endShape();
    
    
    eye = createShape();
    eye.beginShape();
    eye.noStroke();
    eye.vertex(12,12);
    eye.vertex(20,12);
    eye.vertex(20,20);
    eye.vertex(12,20);
    eye.vertex(12,12);
    eye.endShape();
    
    dino.addChild(body);
    dino.addChild(eye);
    
  }
  
  void update(){
    
  };
  
  void render(){
    
  };
  
}// end Sprite class