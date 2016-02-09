class Menu extends GameObject{
  
  float width_menu;
  float height_menu;
  float position;
  int button_number = 0;
  
  Menu(String text,int button_number){
    
     this.button_number = button_number;
     this.text = text;
     
     this.width_menu = width *.4;
     this.height_menu = height * .1;
     
     this.position = menu_pos;
     menu_pos += this.height_menu + 4; // 4 used for paddding
     
     font = loadFont("fonts/PressStart2P-150.vlw");
     textAlign(CENTER, CENTER);
     
     player1 = minim.loadFile("sounds/jump.mp3");
  }
  
  
  
  void render(){  
    
      fill(c);
      rect(pos.x ,  pos.y , width_menu, height_menu );
      
      fill(255,255,255);
      textFont(font,width * 0.01);
      text(text, pos.x + (width_menu/2), pos.y + (height_menu/2)); 
      
      update(); // update self  - no point in adding Menu to gameObject as it will slow down game.
      
      this.pos = new PVector(width/2 - (width_menu/2),  height/2 - position);
  }
  
  
  void update(){
    if(mouseX >= pos.x && mouseX <= (pos.x + this.width_menu) && mouseY <= (pos.y + this.height_menu) &&  mouseY >= pos.y && show_leaderboard == false){
      c = color(200,0,0,100);
      
      player1.rewind();
      player1.play();

      if(mousePressed == true){
        
        c = color(255,255,255,40);
        
        if(button_number == 3){
          start_game = true;
        }
        
        if(button_number == 2 ){
          show_leaderboard = true;
        }
        
        if(button_number == 1){
          // other option not used
        }
        
      }
      
    }
    else{
      c = color(255,255,255,60);
    }
    
  }// end hover method
  
}// end Menu class