class Back_menu_button extends Game_over {
  
  PShape part3,part4;
  float  alpha;
  
  Back_menu_button(float alpha, color c){
    
    this.alpha = alpha;
    
    part1 = createShape();
    part1.beginShape();
    part1.noStroke();
    part1.fill(83,83,83,alpha);
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
    part2.fill(c,alpha);
    part2.vertex(10,15);
    part2.vertex(60,15);
    part2.vertex(60,20);
    part2.vertex(10,20);
    part2.vertex(10,15);
    part2.endShape();
    
    
    part3 = createShape();
    part3.beginShape();
   // part3.noStroke();
    part3.fill(c,alpha);
    part3.vertex(10,32);
    part3.vertex(60,32);
    part3.vertex(60,37);
    part3.vertex(10,37);
    part3.vertex(10,32);
    part3.endShape();
    
    
    part4 = createShape();
    part4.beginShape();
   // part4.noStroke();
    part4.fill(c,alpha);
    part4.vertex(10,50);
    part4.vertex(60,50);
    part4.vertex(60,55);
    part4.vertex(10,55);
    part4.vertex(10,50);
    part4.endShape();
    
      
    part1.scale(0.5);
    part2.scale(0.5);
    part3.scale(0.5);
    part4.scale(0.5);
    
    objects = createShape(GROUP);
    objects.addChild(part1);
    objects.addChild(part2);
    objects.addChild(part3);
    objects.addChild(part4);
    
    pos.x = width *.01;
    pos.y = height *.02;
    
  }
  
  
  void update(){
    
    if(mouseX >= pos.x && mouseX <= (pos.x + (this_width/2)) && mouseY <= (pos.y + (this_height/2)) &&  mouseY >= pos.y && mousePressed){
      
        show_leaderboard = false;
        start_game = false;
       
        for(int i = gameObjects.size() - 1 ; i >= 0   ; i--){
           GameObject go = gameObjects.get(i);
           
           t_rex_c = color(83,83,83);
           sky_c = color(250,250,250);
           
           if(go instanceof T_rex){
             gameObjects.remove(i);
             tRex = new T_rex(70 , height/2 , 0.3, 'W', 'S', t_rex_c ); // x , y , scale, jump button, duck button , color
             gameObjects.add(tRex);
           }
           
        }     
        
    }
    
  }// end update
  
  
  void render(){
     shape(objects, pos.x, pos.y ); 
  }
  
}// end Back_menu_button