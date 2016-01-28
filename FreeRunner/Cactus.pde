class Cactus extends Obstacle{
  
  
  PShape part1, part2, part3, part4, part5, part6, part7, part8, part9, part10, part11, part12;
  
  Cactus(){
    
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
  
  }
  
  
  
}