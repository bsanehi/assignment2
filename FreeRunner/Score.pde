class Score extends GameObject{
  
  int score;
  int high_score;
  boolean flashing;
  int score_flash;
  int num_of_flash;
  
  Score(){
    flashing = false;
    
    try{
      high_score = parseInt(high_data.get(0).score);
    }catch(Exception e){
      high_score = 0;
    }
    
    score_flash = 0;
    num_of_flash = 0;
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
           score_flash = score;
           flashing = true;
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
    
    fill(text_c);
    
    if(flashing == false){
       text = String.format("%05d", score);
       textFont(font,width * 0.02);
       text(text,width *.90, 50); 
    }
    
    if(flashing){
      
        if(num_of_flash == 4){
          flashing = false;
          num_of_flash = 0;
        }
      
         if(frameCount % 20 == 0){
            text = String.format("%05d", score_flash);
            textFont(font,width * 0.02);
            text(text,width *.90, 50); 
            
            num_of_flash++;
         }
    }
       
    
    if(dead || restart == true && high_score > 0){
      text = String.format("%05d", high_score);
      textFont(font,width * 0.02);
      text("HI "+ text,width *.74, 50); 
    }
     
  }
  
}// end Score class