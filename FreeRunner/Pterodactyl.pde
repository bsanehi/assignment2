class Pterodactyl extends GameObject{
  
  PShape head, body, wing1, wing2;
  
  float Pterodactyl_width;
  boolean fly;
  
  Pterodactyl(float x, float y, float scale, float speed,color c){
    
    super(x,y,scale,c);
    
    head = createShape();
    head.beginShape();
    head.noStroke();
    head.fill(c);
    head.vertex(0,0);
    head.vertex(0,-5);
    head.vertex(5,-5);
    head.vertex(5,-10);
    head.vertex(10,-10);
    head.vertex(10,-15);
    head.vertex(15,-15);
    head.vertex(15,-20);
    head.vertex(20,-20);
    head.vertex(20,-25);
    head.vertex(30,-25);
    head.vertex(30,-15);
    head.vertex(35,-15);
    head.vertex(35,0);
    head.vertex(0,0);
    head.endShape();
      
    body = createShape();
    body.beginShape();
    body.noStroke();
    body.fill(c);
    body.vertex(35,0);
    body.vertex(35,5);
    body.vertex(40,5);
    body.vertex(40,10);
    body.vertex(45,10);
    body.vertex(45,15);
    body.vertex(50,15);
    body.vertex(50,15);
    body.vertex(50,20);
    body.vertex(55,20);
    body.vertex(55,25);
    body.vertex(100,25);
    body.vertex(100,20);
    body.vertex(120,20);
    body.vertex(120,15);
    body.vertex(105,15);
    body.vertex(105,10);
    body.vertex(125,10);
    body.vertex(125,5);
    body.vertex(90,5);
    body.vertex(90,0);
    body.vertex(85,0);
    body.vertex(85,-5);
    body.vertex(30,-5);
    body.vertex(30,0);
    body.endShape(); 
    
    wing1 = createShape();
    wing1.beginShape();
    wing1.noStroke();
    wing1.fill(c);
    wing1.vertex(35,-5);
    wing1.vertex(40,-5);
    wing1.vertex(40,-25);
    wing1.vertex(35,-25);
    wing1.vertex(35,-40);
    wing1.vertex(40,-40);
    wing1.vertex(40,-35);
    wing1.vertex(45,-35);
    wing1.vertex(45,-30);
    wing1.vertex(50,-30);
    wing1.vertex(50,-25);
    wing1.vertex(55,-25);
    wing1.vertex(55,-20);
    wing1.vertex(60,-20);
    wing1.vertex(60,-15);
    wing1.vertex(65,-15);
    wing1.vertex(65,-10);
    wing1.vertex(75,-10);
    wing1.vertex(75,0);
    wing1.vertex(35,0);
    wing1.vertex(35,-5);
    wing1.endShape();
    
    wing2 = createShape();
    wing2.beginShape();
    wing2.noStroke();
    wing2.fill(c);
    wing2.vertex(45,10);
    wing2.vertex(45,50);
    wing2.vertex(50,50);
    wing2.vertex(50,45);
    wing2.vertex(55,45);
    wing2.vertex(55,35);
    wing2.vertex(60,35);
    wing2.vertex(60,30);
    wing2.vertex(65,30);
    wing2.vertex(65,10);
    wing2.vertex(45,10);
    wing2.endShape();
    
    Pterodactyl_width = head.width + body.width;
    
    fly = false;
    this.speed = speed;

    objects.addChild(head); 
    objects.addChild(body);
    objects.addChild(wing1);

  }
    
    
  void update(){
    
    pos.x -= this.speed;

    if (pos.x < -Pterodactyl_width){
       gameObjects.remove(this);
    }
    
  }
    
  void render(){
    
    if(frameCount % 15 == 0 && !dead){
      if(fly == false){
        
        fly = true;
        objects = new PShape();
        objects.addChild(head); 
        objects.addChild(body);
        objects.addChild(wing1);
        this.objects.scale(scale);  
        
      } else{
        
        fly = false;
        objects = new PShape();
        objects.addChild(head); 
        objects.addChild(body);
        objects.addChild(wing2);
        this.objects.scale(scale);  
      }
      
    }
    
      shape(objects, pos.x, pos.y);

  }
  
}// end Pterodactyl class