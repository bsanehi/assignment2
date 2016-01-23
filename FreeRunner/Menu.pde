class Menu {
  
  String menu_text;
  color c;
  float width_menu;
  float height_menu;
  PVector menu_position;
  float pos;
  int button_number = 0;
  
  Menu(String x,int button_num){
     this.button_number = button_num;
     this.menu_text = x;
     this.width_menu = width *.4;
     this.height_menu = height * .1;
     this.pos = menu_pos;
     menu_pos += this.height_menu + 3;
     this.menu_position = new PVector(width/2 - (width_menu/2),  height/2 -  pos);
  }
  
  void render(){  
      fill(c);
      rect(menu_position.x ,  menu_position.y  , width_menu, height_menu );
      fill(0);
      textSize(width * 0.02);
      textAlign(CENTER, CENTER);
      text(menu_text, menu_position.x + (width_menu/2), menu_position.y + (height_menu/2)); 
      hover();
  }
  
  void hover(){
    if(mouseX >= menu_position.x && mouseX <= (menu_position.x + this.width_menu) && mouseY <= (menu_position.y + this.height_menu) &&  mouseY >= menu_position.y){
      c = color(0,0,0,20);
      if(mousePressed == true){
        c = color(40,215,255);
        if(button_number == 3){
          start_game = true;
        }
      }
    }
    else{
      c = color(255,255,255,50);
    }
  }
  
}// end Menu class