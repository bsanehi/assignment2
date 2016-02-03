import ddf.minim.*;

Minim minim;

float ground_y;

void setup(){
  size(1000,500);
  start_game = false;
  
  minim = new Minim(this);
  sub_menu_1 = new Menu("Settings",1);
  sub_menu_2 = new Menu("View High Score",2);
  sub_menu_3 = new Menu("Start Game",3);
  
  score = new Score();
  gameObjects.add(score);
  
  
  ground_y = height/2 + 40;
  
  game_speed = 7;

  
  // player
  tRex = new T_rex(70 , height/2 , 0.3, 'W', 'S', color(83,83,83) ); // x , y , scale, jump button, duck button , color
  gameObjects.add(tRex);
  
}// end setup


ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

boolean[] keys = new boolean[512];

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}


// Game Menu
Menu sub_menu_1;
Menu sub_menu_2;
Menu sub_menu_3;

// sprite
T_rex tRex;

Cloud cloud1, cloud2, cloud3, cloud4, cloud5;


Score score;

Ground_line ground;


float menu_pos;

Boolean start_game;
float intro_animation;
float intro_speed;


float game_speed;
final float ACCELERATION = 0.001;


void draw(){
  
  background(255,255,255);
  
  if(start_game == false){
    
    background(0,0,0);
      
    intro_animation = width + (width/5);
    intro_speed = width *.03;
    
    sub_menu_1.render();
    sub_menu_2.render();
    sub_menu_3.render();
  }
  
  
  if(start_game == true && intro_animation > 0){
    
    if(frameCount % 30 == 0){
      
      for(int i=0; i< 30; i++){
  
        Dirt dirt = new Dirt(random(0, width) , random(ground_y + 4, ground_y + 15), game_speed , color(83,83,83) );
        gameObjects.add(dirt);
      }
      
    }
       
    tRex.update();
    tRex.render();
    
    fill(0);
    intro_animation -= intro_speed;
    ellipse(width/2,height/2,intro_animation,intro_animation);
    
  }
  
  
  if(start_game == true && intro_animation <= 0){
    
    for(int i = gameObjects.size() - 1 ; i >= 0   ; i--)
    {
       GameObject go = gameObjects.get(i);
       go.update();
       go.render();
       
       if(go instanceof Dirt || go instanceof Bumps || go instanceof Cactus){
         go.speed = game_speed;
       }
       
    }   
    
    if(frameCount % 60 == 0){
        Cactus cactus = new Cactus( random(width,width + 200),ground_y - 46, 0.20 , game_speed, (int)random(1,9));
        gameObjects.add(cactus); 

        Bumps bump = new Bumps(random(width,width + 200), ground_y, 0.3, (int)random(1,3) , game_speed);
        gameObjects.add(bump);   
    }

    if(frameCount % 200 == 0){
        cloud1 = new Cloud(100+ width,random(30,height/3), random(.45,.7), 50, 1 );  // x , y, scale, alpha, cloud speed
        gameObjects.add(cloud1);
        
    }
        
    
    if(frameCount % 5 ==0){
        
      for(int i = 0; i<2; i++){
        Dirt dirt = new Dirt(random(width, width*2), random(ground_y + 4, ground_y + 15)  , game_speed , color(83,83,83) );
        gameObjects.add(dirt);
        
      }
      
    }
     
     
    Ground_line  ground = new Ground_line(0, ground_y, 0.02);
    gameObjects.add(ground);
     
     
    game_speed += ACCELERATION;
    
  }// end start game
  
  
 
  
  
  checkCollisions();
  
}// end draw

  
void mousePressed() {
   // tRex.jump();
}
              



void checkCollisions(){
    
    for(int i= gameObjects.size() - 1; i >= 0 ; i--){
      
      GameObject go = gameObjects.get(i);
      
      if(go instanceof T_rex  ){
        
        for(int j = gameObjects.size() - 1; j >= 0 ; j--){
          
           GameObject other = gameObjects.get(j);
           
            if(other instanceof Cactus){ // Check the type of object
            
                 for(int k = 0; k <  ((Cactus)other).objects.getChildCount(); k++){ // get child count
                      
                     for(int m = 0; m < (((Cactus)other).objects.getChild(k).getVertexCount()); m++){  // get vertex count
                          
                          PVector v = ((Cactus)other).objects.getChild(k).getVertex(m);        
                          v.div(5);
                          
                          float d = dist(v.x + other.pos.x,   v.y + 244,     go.pos.x - 5, go.pos.y + 20);
                          
                          println(d);
                          if(d < 38){
                            stroke(255,0,0);
                          }
                          else{
                            stroke(0,255,0);
                          }
                           ellipse(v.x + other.pos.x, v.y  + 244,1,1);  // points on cactus
                        //  stroke(83,83,83);
                    //      noFill();
                         //  ellipse(go.pos.x - 5,go.pos.y + 20, 50,50);  // circle around t-rex
                         
                     }// end inner inner for
                 }// end inner inner for  
                 
          }// end inner if
        }// end inner for
      }// end if
    }// end for
}// end checkCollisions 





/*
void checkCollisions(){
    
    for(int i = gameObjects.size() - 1; i >= 0 ; i--){
      noFill();
    //  stroke(0,255,0);
      GameObject go = gameObjects.get(i);
      
      if(go instanceof T_rex){
        
        ellipse(go.pos.x, go.pos.y, 60, 60);    
        
        for(int j = gameObjects.size() - 1; j >= 0 ; j--){
          
           GameObject other = gameObjects.get(j);
           
            if(other instanceof Cactus){ // Check the type of a object
            
                ellipse(other.pos.x, other.pos.y, 60, 60);  
            
                 if(go.pos.dist(other.pos) < 500){
                   
                 }             
            }
          }// end inner if
        }// end inner for 
    }// end for 
}// end checkCollisions  */