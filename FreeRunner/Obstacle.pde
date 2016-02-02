class Obstacle extends GameObject{
  
  
  Obstacle(){
    
  }
  
  Obstacle(float x, float y, float scale){
    
      this.pos.x = x;
      this.pos.y = y;
     
      Cactus cactus = new Cactus(x, y, scale);
      cactus.pos.x = random(width,width + 200);
      cactus.pos.y = y + 5;
      cactus.speed = this.speed;
      gameObjects.add(cactus);
      
  }
  
  void update(){
      gameObjects.remove(this);
  };
  
  void render(){
       
  };
  
  
}