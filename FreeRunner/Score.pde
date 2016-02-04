class Score extends GameObject{
  
  int score;
  int high_score;
  
  Score(){
    high_score = 0;
    score = 0;
    player1 = minim.loadFile("sounds/achievement.mp3");
    font = loadFont("fonts/PressStart2P-150.vlw");
    textAlign(CENTER, CENTER);
  }

  
  void update(){
    
    if(!dead){
    
      if(frameCount % 4 == 0){
        
        score++;
        
        if(score % 100 == 0){
           player1.rewind();
           player1.play();
        }
        
      }// end outer if
      
    }// end outer outer if
    else{
      
      if(score > high_score){
        high_score = score;
      }
      
    }
    
  };
  
  void render(){
     fill(83,83,83);
     text = String.format("%05d", score);
     textFont(font,width * 0.02);
     text(text,width *.90, 50); 
     
     if(dead || restart == true){
       text = String.format("%05d", high_score);
       textFont(font,width * 0.02);
       text("HI "+ text,width *.74, 50); 
     }
     
  };
  
}