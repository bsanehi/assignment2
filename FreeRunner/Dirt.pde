class Dirt extends GameObject {
  
  void update(){
    
    pos.x -= super.speed;

    if (pos.x < 0)
    {
       // remove
       gameObjects.remove(this);
    }
    
  };
  
  void render(){
  
     if(random(0,1) == 0){
       fill(c);
       rect(pos.x,pos.y,scale,scale_dirt);  
     }
     else{
       ellipse(pos.x,pos.y,1,1);  
     }
    
  };
  
}