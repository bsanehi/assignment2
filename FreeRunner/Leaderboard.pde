class Leaderboard {
  
  
  float spacing;
  float move_down;
 
  Leaderboard(){
     textAlign(CENTER, CENTER);
     font = loadFont("fonts/PressStart2P-150.vlw");
     spacing = height/12;
     move_down = spacing * 2;
  }
  
  void render(){
    
    background(0);
    
    Back_menu_button back_button = new Back_menu_button(500,color(255,255,255));
    
    back_button.update();
    back_button.render();
    
    textFont(font,width * 0.03);
    text("Top Score", width/2, 35);
    
    textFont(font,width * 0.01);
    
    for(int i = 0; i<high_data.size() && i < 10; i++){
      
      text(high_data.get(i).name + " <----> " + high_data.get(i).score, width/2, move_down + (spacing * i ) );

    }
    
  }
  
}// end Leaderboard class