class Score extends GameObject{
  
  int score;
  
  Score(){
    
    score = 0;
    player = minim.loadFile("sounds/achievement.mp3");
  }

  
  void update(){
    
    if(frameCount % 10 == 0){
      
      score++;
      
      if(score % 100 == 0){
         player.rewind();
         player.play();
      }
      
    }// end outer if
    
  };
  
  void render(){
 //    String.format("%05d", score);
     println(String.format("%05d", score));
  };
  
}