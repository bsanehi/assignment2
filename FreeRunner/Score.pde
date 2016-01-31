class Score extends GameObject{
  
  int score;
  
  Score(){
    
    score = 0;
    player = minim.loadFile("sounds/achievement.mp3");
    font = loadFont("fonts/PressStart2P-150.vlw");
    textAlign(CENTER, CENTER);
  }

  
  void update(){
    
    if(frameCount % 4 == 0){
      
      score++;
      
      if(score % 100 == 0){
         player.rewind();
         player.play();
      }
      
    }// end outer if
    
  };
  
  void render(){
     fill(83,83,83);
     text = String.format("%05d", score);
     textFont(font,width * 0.02);
     text(text,width *.90, 50); 
  };
  
}