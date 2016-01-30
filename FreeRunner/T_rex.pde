class T_rex extends GameObject {
  
  char jump;
  char duck;
  boolean gravity;
  boolean running;
  float jump_height;
  
  PShape body, lowbody, head, lowhead, mouth1, mouth2, low_mouth, legs1, legs2, legs3, eye1, eye2, eyeBall, loweye, white_bg;
  
  T_rex(float startX, float startY, float scale, char jump, char duck, color c){
    
      // call GameObject
      super(startX, startY, scale);
      
      head = createShape();
      head.beginShape();
      head.noStroke();
      head.fill(c);
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
      
      mouth1 = createShape();
      mouth1.beginShape();
      mouth1.noStroke();
      mouth1.fill(c);
      mouth1.vertex(24,50);
      mouth1.vertex(50,50);
      mouth1.vertex(50,58);
      mouth1.vertex(24,58);
      mouth1.vertex(24,47);
      mouth1.endShape();
      
      mouth2 = createShape();
      mouth2.beginShape();
      mouth2.noStroke();
      mouth2.fill(c);
      mouth2.vertex(24,37);
      mouth2.vertex(50,37);
      mouth2.vertex(50,58);
      mouth2.vertex(24,58);
      mouth2.vertex(24,47);
      mouth2.endShape();
      
      body = createShape();
      body.beginShape();
      body.noStroke();
      body.fill(c);
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
      lowbody.fill(c);
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

      lowhead = createShape();
      lowhead.beginShape();
      lowhead.noStroke();
      lowhead.fill(c);
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
      
      low_mouth = createShape();
      low_mouth.beginShape();
      low_mouth.noStroke();
      low_mouth.fill(c);
      low_mouth.vertex(64,117);
      low_mouth.vertex(90,117);
      low_mouth.vertex(90,125);
      low_mouth.vertex(64,125);
      low_mouth.vertex(64,117);
      low_mouth.endShape();
      
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
      legs1.vertex(-18,128);
      legs1.vertex(-18,135);
      legs1.vertex(-25,135);
      legs1.vertex(-25,142);
      legs1.vertex(-32,142);
      legs1.vertex(-32,150); 
      legs1.vertex(-25,150); 
      legs1.vertex(-25,155); 
      legs1.vertex(-38,155); 
      legs1.vertex(-38,135); 
      legs1.vertex(-38,126); 
      legs1.endShape();
      
      legs2 = createShape();
      legs2.beginShape();
      legs2.noStroke();
      legs2.fill(c);
      legs2.vertex(3,126);
      legs2.vertex(3,136);
      legs2.vertex(12,136);
      legs2.vertex(12,141);
      legs2.vertex(-3,141);
      legs2.vertex(-3,135);
      legs2.vertex(-11,135);
      legs2.vertex(-11,128); 
      legs2.vertex(-18,128);
      legs2.vertex(-25,128);
      legs2.vertex(-25,135); 
      legs2.vertex(-32,135);
      legs2.vertex(-32,150); 
      legs2.vertex(-25,150); 
      legs2.vertex(-25,155); 
      legs2.vertex(-38,155); 
      legs2.vertex(-38,135); 
      legs2.vertex(-38,126); 
      legs2.endShape();
      
      legs3 = createShape();
      legs3.beginShape();
      legs3.noStroke();
      legs3.fill(c);
      legs3.vertex(3,126);
      legs3.vertex(3,150);
      legs3.vertex(10,150);
      legs3.vertex(10,155);
      legs3.vertex(-3,155);
      legs3.vertex(-3,135);
      legs3.vertex(-3,128); 
      legs3.vertex(-18,128); 
      legs3.vertex(-18,128);
      legs3.vertex(-18,135);
      legs3.vertex(-25,135); 
      legs3.vertex(-25,142);
      legs3.vertex(-32,142);
      legs3.vertex(-38,142);
      legs3.vertex(-38,136);
      legs3.vertex(-38,126); 
      legs3.endShape();

      eye1 = createShape();
      eye1.beginShape();
      eye1.noStroke();
      eye1.vertex(10,10);
      eye1.vertex(17,10);
      eye1.vertex(17,17);
      eye1.vertex(10,17);
      eye1.vertex(10,10);
      eye1.endShape();
      
      eye2 = createShape();
      eye2.beginShape();
      eye2.noStroke();
      eye2.vertex(10,10);
      eye2.vertex(22,10);
      eye2.vertex(22,22);
      eye2.vertex(10,22);
      eye2.vertex(10,10);
      eye2.vertex(10,10);
      eye2.endShape();
      
      eyeBall = createShape();
      eyeBall.beginShape();
      eyeBall.fill(83,83,83);
      eyeBall.noStroke();
      eyeBall.vertex(13,13);
      eyeBall.vertex(19,13);
      eyeBall.vertex(19,19);
      eyeBall.vertex(13,19);
      eyeBall.vertex(13,13);
      eyeBall.endShape();
     
      this.jump = jump;
      this.duck = duck;
      this.gravity = true;
      
      
      white_bg = createShape();
      white_bg.beginShape();
      white_bg.noStroke();
      white_bg.fill(255,255,255);
      white_bg.vertex(-55,128);
      white_bg.vertex(22,128);
      white_bg.vertex(22,137);
      white_bg.vertex(-55,137);
      white_bg.endShape();
      
      
      objects.addChild(head); // 0
      objects.addChild(mouth1);
      objects.addChild(eye1);
      objects.addChild(body); // 1
      objects.addChild(legs1); // 2
      
      save_pos = startY;
      this.jump_height = INITIAL_JUMP_VELOCITY;
  }
  
  
  void update(){
    
  }
  
  
  void render(){
    
    if(running && pos.y ==  this.save_pos){
      run();
    }

    if(this.gravity == false){
      
       objects = new PShape();
       objects.addChild(head); // 0
       objects.addChild(mouth1);
       objects.addChild(eye1);
       objects.addChild(body); // 1
       objects.addChild(legs1); // 2
       this.objects.scale(scale);  
      
       pos.y -=  this.jump_height;
       
       if(pos.y < (save_pos  - (MIN_JUMP_HEIGHT/2))){
         
           this.jump_height = INITIAL_JUMP_VELOCITY/2;
           
           pos.y -= this.jump_height/1.5;
       }
       
       if(pos.y < (save_pos  - MIN_JUMP_HEIGHT)){
         gravity = true;
         this.jump_height = INITIAL_JUMP_VELOCITY;
       }
      
    }
    
    if(this.gravity == true){
      
         if( pos.y < save_pos){
              pos.y += GRAVITY;
         }
         
         if(pos.y > save_pos){
              pos.y = this.save_pos;
         }
    }
    
    shape(objects, super.pos.x, super.pos.y);
       
  }
  
  
  void run(){
    
      if(frameCount % 5 == 0 ){
         objects = new PShape();
         objects.addChild(head); // 0
         objects.addChild(mouth1);
         objects.addChild(eye1);
         objects.addChild(body); // 1
         objects.addChild(white_bg);
         objects.addChild(legs2); // 2
         this.objects.scale(scale);  
        
      }
      
      if(frameCount % 10 == 0 ){
         objects = new PShape();
         objects.addChild(head); // 0
         objects.addChild(mouth1);
         objects.addChild(eye1);
         objects.addChild(body); // 1
         objects.addChild(white_bg);
         objects.addChild(legs3); // 2
         this.objects.scale(scale);  
      }
   
   
  }
  
  
  void jump(){
    
    if(pos.y == save_pos){
      this.gravity = false;
    }
   
    running = true;
    
  }
  
  
  void duck(){
    
  }
  
  
  
}// end T_rex