class Menu extends GameObject{
  
  float width_menu;
  float height_menu;
  float position;
  int button_number = 0;
  
  
  Menu(String x,int button_num){
     this.button_number = button_num;
     this.text = x;
     this.width_menu = width *.4;
     this.height_menu = height * .1;
     this.position = menu_pos;
     menu_pos += this.height_menu  + 4;
     font = loadFont("fonts/PressStart2P-150.vlw");
     textAlign(CENTER, CENTER);
     textFont(font,width * 0.02);
    player1 = minim.loadFile("sounds/jump.mp3");
  }
  
  void render(){  
      fill(c);
      rect(pos.x ,  pos.y , width_menu, height_menu );
      fill(255,255,255);
      text(text, pos.x + (width_menu/2), pos.y + (height_menu/2)); 
      update();
      this.pos = new PVector(width/2 - (width_menu/2),  height/2 - position);
  }
  
  void update(){
    if(mouseX >= pos.x && mouseX <= (pos.x + this.width_menu) && mouseY <= (pos.y + this.height_menu) &&  mouseY >= pos.y){
      c = color(200,0,0,100);
      
      player1.rewind();
      player1.play();

      if(mousePressed == true){
        
        c = color(255,255,255,40);
        
        if(button_number == 3){
          start_game = true;
        }
        
        if(button_number == 2){
          
        }
        
        if(button_number == 1){
          
        }
        
      }
      
    }
    else{
      c = color(255,255,255,60);
    }
    
  }// end hover method
  
}// end Menu class