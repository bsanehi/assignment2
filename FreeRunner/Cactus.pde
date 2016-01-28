class Cactus extends Obstacle{
  
  
  PShape part1, part2, part3, part4, part5, part6, part7, part8, part9, part10, part11, part12;
  
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
  
  
  
}