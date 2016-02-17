class Bumps extends GameObject implements Speed_change {
  
  PShape part1, part2, part3, part4, part5, part6;
  
  float bump_width;
  
  Bumps (float x, float y, float scale, int random , float speed, color c){
    
    super(x,y,scale,c);
    
    this.speed = (int)speed;
    
    part1 = createShape();
    part1.beginShape();
    part1.noStroke();
    part1.fill(ground_c);
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
    part3.fill(sky_c);
    part3.vertex(125, -10);
    part3.vertex(125, 0);
    part3.vertex(135, 0);
    part3.vertex(135, 5);
    part3.vertex(175, 5);
    part3.vertex(175, 0);
    part3.vertex(185, 0);
    part3.vertex(185, -10); 
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
    
    part5 = createShape();
    part5.beginShape();
    part5.noStroke();
    part5.fill(ground_c);
    part5.vertex(105, 0);
    part5.vertex(105, 5);
    part5.vertex(155, 5);
    part5.vertex(155, 0);
    part5.vertex(155, -2);
    part5.vertex(151, -2);
    part5.vertex(151, -6);
    part5.vertex(143, -6);
    part5.vertex(143, -12);
    part5.vertex(138, -12);
    part5.vertex(138, -15);
    part5.vertex(122, -15);
    part5.vertex(122, -12);
    part5.vertex(116, -12);
    part5.vertex(116, -8);
    part5.vertex(110, -8);
    part5.vertex(110, -6);
    part5.vertex(108, -6);
    part5.vertex(108, -2);
    part5.vertex(105, -2);
    part5.vertex(105, 0);
    part5.endShape();
    
    part6 = createShape();
    part6.beginShape();
    part6.noStroke();
    part6.fill(83,83,83);
    part6.vertex(100, 0);
    part6.vertex(100, -5);
    part6.vertex(105, -5);
    part6.vertex(105, -10);
    part6.vertex(112, -10);
    part6.vertex(112, -15);
    part6.vertex(118, -15);
    part6.vertex(118, -20);
    part6.vertex(140, -20);
    part6.vertex(140, -15);
    part6.vertex(145, -15);
    part6.vertex(145, -10);
    part6.vertex(152, -10);
    part6.vertex(152, -5);
    part6.vertex(160, -5);
    part6.vertex(160, 0);
    part6.vertex(148, 0);
    part6.vertex(148, -4);
    part6.vertex(140, -4);
    part6.vertex(140, -10);
    part6.vertex(136, -10);
    part6.vertex(136, -13);
    part6.vertex(122, -13);
    part6.vertex(122, -10);
    part6.vertex(117, -10);
    part6.vertex(117, -5);
    part6.vertex(110, -5);
    part6.vertex(110, 0);
    part6.vertex(100, 0);
    part6.endShape();
    
    this.bump_width = part2.width;
    
    if( random == 1 ){

      objects = createShape(GROUP);
      objects.addChild(part1);
      objects.addChild(part2);
      objects.addChild(part3);
      objects.addChild(part4);
    }
    else{
      
      objects = createShape(GROUP);
      objects.addChild(part1);
      objects.addChild(part2);
      objects.addChild(part5);
      objects.addChild(part6);
    }
    
    this.objects.scale(scale);
    
  }// end Bump constructor
  
  
  void speed(float game_speed){
    this.speed = (int)game_speed;
  }
  
    
  void update(){
    
    pos.x -= this.speed;

    if (pos.x < -bump_width){
       gameObjects.remove(this);
    }
    
  };
  
  void render(){
     shape(objects, pos.x, pos.y);
  };
  
  
}// end Bumps class