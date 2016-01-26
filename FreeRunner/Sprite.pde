class Sprite extends GameObject{
  
  char jump;
  PShape body, lowbody, head, lowhead, mouth1, mouth2, low_mouth, legs1, legs2, legs3, eye1, eye2, eyeBall, loweye;

  Sprite(char jump,float size,float startX, float startY){
    
    super(startX, startY);
    this.jump = jump;
    
    objects = createShape(GROUP);
  
    // 11 vertices
    head = createShape();
    head.beginShape();
    head.noStroke();
    head.fill(83,83,83);
    head.vertex(8, 0);
    head.vertex(55,0);
    head.vertex(55,10);
    head.vertex(65,10);
    head.vertex(65,44);
    head.vertex(30,44);
    head.vertex(30,58);
    head.vertex(-5,58);
    head.vertex(-5,10);
    head.vertex(4,10);
    head.vertex(4,0); 
    head.endShape();
    
    
    // 5 vertices
    mouth1 = createShape();
    mouth1.beginShape();
    mouth1.noStroke();
    mouth1.fill(83,83,83);
    mouth1.vertex(24,50);
    mouth1.vertex(50,50);
    mouth1.vertex(50,58);
    mouth1.vertex(24,58);
    mouth1.vertex(24,47);
    mouth1.endShape();
    
    
    // 5 vertices
    mouth2 = createShape();
    mouth2.beginShape();
    mouth2.noStroke();
    mouth2.fill(83,83,83);
    mouth2.vertex(24,37);
    mouth2.vertex(50,37);
    mouth2.vertex(50,58);
    mouth2.vertex(24,58);
    mouth2.vertex(24,47);
    mouth2.endShape();
    
    
    // 47 vertices
    body = createShape();
    body.beginShape();
    body.noStroke();
    body.fill(83,83,83);
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
    body.vertex(25,55);
    body.endShape();
    
    lowbody = createShape();
    lowbody.beginShape();
    lowbody.noStroke();
    lowbody.fill(83,83,83);
    lowbody.vertex(-80,61);
    lowbody.vertex(-75,61); 
    lowbody.vertex(-75,71); 
    lowbody.vertex(-60,71); 
    lowbody.vertex(-60,79); 
    lowbody.vertex(-38,79); 
    lowbody.vertex(-38,71); 
    lowbody.vertex(8,71); 
    lowbody.vertex(8,80);
    lowbody.vertex(21,80);
    lowbody.vertex(21,80);
    lowbody.vertex(36,80);
    lowbody.vertex(36,120); 
    lowbody.vertex(24,120); 
    lowbody.vertex(24,128);  
    lowbody.vertex(-50,128);
    lowbody.vertex(-50,120);
    lowbody.vertex(-58,120);
    lowbody.vertex(-58,113);
    lowbody.vertex(-66,113);
    lowbody.vertex(-66,106);
    lowbody.vertex(-73,106);
    lowbody.vertex(-73,98);
    lowbody.vertex(-80,98);
    lowbody.vertex(-80,76); 
    lowbody.endShape();
    
     // 11 vertices
    lowhead = createShape();
    lowhead.beginShape();
    lowhead.noStroke();
    lowhead.fill(83,83,83);
    lowhead.vertex(31, 67);
    lowhead.vertex(95,67);
    lowhead.vertex(95,77);
    lowhead.vertex(105,77);
    lowhead.vertex(105,111);
    lowhead.vertex(70,111);
    lowhead.vertex(70,125);
    lowhead.vertex(35,125);
    lowhead.vertex(31,77);
    lowhead.vertex(31,77);
    lowhead.vertex(31,67); 
    lowhead.endShape();
    
    loweye = createShape();
    loweye.beginShape();
    loweye.noStroke();
    loweye.vertex(40,75);
    loweye.vertex(47,75);
    loweye.vertex(47,82);
    loweye.vertex(40,82);
    loweye.vertex(40,75);
    loweye.endShape();
    
    
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
    
    legs3 = createShape();
    legs3.beginShape();
    legs3.noStroke();
    legs3.fill(83,83,83);
    legs3.vertex(3,126);
    legs3.vertex(3,150);
    legs3.vertex(10,150);
    legs3.vertex(10,155);
    legs3.vertex(-3,155);
    legs3.vertex(-3,135);
    legs3.vertex(-11,135);
    legs3.vertex(-11,128);
    legs3.vertex(-25,128);
    legs3.vertex(-25,136);
    legs3.vertex(-18,136);
    legs3.vertex(-18,141);
    legs3.vertex(-31,141);
    legs3.vertex(-31,135);
    legs3.vertex(-40,135);
    legs3.vertex(-40,126);
    legs3.endShape();
    
    eye1 = createShape();
    eye1.beginShape();
    eye1.noStroke();
    eye1.vertex(12,12);
    eye1.vertex(20,12);
    eye1.vertex(20,20);
    eye1.vertex(12,20);
    eye1.vertex(12,12);
    eye1.endShape();
    
    objects.addChild(body); // 0
    objects.addChild(eye); // 1
    objects.addChild(legs1); // 2
    
    objects.scale(size);  
  }
  
  void update(){
    
  };
  
  void render(){
        shape(objects, pos.x, pos.y);
  };
  
}// end Sprite class