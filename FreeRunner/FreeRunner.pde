import ddf.minim.*;
Minim minim;

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>(250);

boolean[] keys = new boolean[512];

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}


float ground_y;
boolean show_collision;
float col_circle_size;
float col_circle_radius;
boolean dead;
boolean restart;
float menu_pos;
Boolean start_game;
float intro_animation;
float intro_speed;
float game_speed;
final float ACCELERATION = 0.001;
float object_creation;
float T_rex_circle_y = 20;
int points; // used for spawning Pterodactyl
boolean stop_flying;

// Game Menu
//Menu sub_menu_1;
Menu sub_menu_2;
Menu sub_menu_3;

// sprite
T_rex tRex;

Cloud cloud1, cloud2, cloud3, cloud4, cloud5;

// score class
Score score;

// game over class
Game_over gameOver;

// ground class
Ground_line ground;


void setup(){
  size(1000,500);
  start_game = false;
  restart = false;
  object_creation = 60;
  
  gameOver = new Game_over();
  gameObjects.add(gameOver);
  
  minim = new Minim(this);
//  sub_menu_1 = new Menu("Settings",1);
  sub_menu_2 = new Menu("View High Score",2);
  sub_menu_3 = new Menu("Start Game",3);
  
  score = new Score();
  gameObjects.add(score);
  
  ground_y = height/2 + 40;
  
  game_speed = 6;

  show_collision = false;
  col_circle_size = 38;
  col_circle_radius = col_circle_size/2;
  
  // player
  tRex = new T_rex(70 , height/2 , 0.3, 'W', 'S', color(83,83,83) ); // x , y , scale, jump button, duck button , color
  gameObjects.add(tRex);
  
}// end setup






void draw(){
  
   background(247,247,247);
//  background(119,181,254);


  if(start_game == false && !dead){
    
    background(0,0,0);
      
    intro_animation = width + (width/5);
    intro_speed = width *.03;
    
//sub_menu_1.render();
    sub_menu_2.render();
    sub_menu_3.render();
  }
  
  
  if(start_game == true && intro_animation > 0){
    
    if(frameCount % 30 == 0){
      
      for(int i=0; i< 20; i++){
  
        Dirt dirt = new Dirt(random(0, width + 300) , random(ground_y + 4, ground_y + 15), game_speed , color(83,83,83) );
        gameObjects.add(dirt);
      }
      
    }
       
    tRex.update();
    tRex.render();
    
    fill(0);
    intro_animation -= intro_speed;
    ellipse(width/2,height/2,intro_animation,intro_animation);
    
  }
  
  
  if(start_game == true && intro_animation <= 0 ){
    
    for(int i = gameObjects.size() - 1 ; i >= 0   ; i--)
    {
       GameObject go = gameObjects.get(i);
       go.update();
       go.render();
       
       if(go instanceof Dirt || go instanceof Bumps || go instanceof Cactus || go instanceof Pterodactyl){
         go.speed = game_speed;
       }
       
       if(go instanceof Score){
         points = ((Score)go).score;
       }
       
    }// end for
    
    if(!dead){
            
      if(frameCount % ((int)object_creation) == 0){
          
          if(points >= 200){
            
            if((int)random(1,3) == 1){
               Pterodactyl pterodactyl = new Pterodactyl(width, random(ground_y- 75, ground_y -20), 0.4, game_speed, color(83,83,83));
               gameObjects.add(pterodactyl);      
             }
             else{
                Cactus cactus = new Cactus( random(width,width),ground_y - 46, 0.20 , game_speed, (int)random(1,9), color(83,83,83));
                gameObjects.add(cactus); 
             }
          }
          else{
              Cactus cactus = new Cactus( random(width,width),ground_y - 46, 0.20 , game_speed, (int)random(1,9), color(83,83,83));
              gameObjects.add(cactus); 
          }
         
          
          Bumps bump = new Bumps(random(width,width + 240), ground_y, 0.3, (int)random(1,3) , game_speed, color(83,83,83));
          gameObjects.add(bump); 
          
      }// end inner if
      
     if(frameCount % 8 == 0){
       
        for(int i = 0; i<2; i++){
           Dirt dirt = new Dirt(random(width, width*2), random(ground_y + 4, ground_y + 15)  , game_speed , color(83,83,83) );
           gameObjects.add(dirt);
        }
        
     }// end inner if
     
      game_speed += ACCELERATION;
      
      if(object_creation >= 10){
        object_creation -= ACCELERATION * 1.7;
      }
      
      checkCollisions();
      
    }// end if not dead
    
    
    // clouds don't go away after death
    if(frameCount % 200 == 0){
        cloud1 = new Cloud(100+ width,random(30,height/3), random(.45,.7), 50, 1 , color(83,83,83) );  // x , y, scale, alpha, cloud speed
        gameObjects.add(cloud1);
    }// end if
        
    Ground_line  ground = new Ground_line(0, ground_y, 0.02, color(83,83,83));
    gameObjects.add(ground);
     
  }// end start game
  
}// end draw



  
void mousePressed() {
  
   if(dead){
     
      for(int i = gameObjects.size() - 1 ; i >= 0   ; i--){
         GameObject go = gameObjects.get(i);
         
         if(go instanceof Game_over){
           ((Game_over)go).remove_gameover();
         }
         
         if(go instanceof Score){
           ((Score)go).score = 0;
         }
         
         if(go instanceof Cactus || go instanceof Bumps){
            gameObjects.remove(i);
         }
         
         if(go instanceof Pterodactyl){
            gameObjects.remove(i);
         }
         
         restart = true;
         dead = false;
         game_speed = 6;
         object_creation = 60;
         
      }// end for
      
   }// end if 
   
   
   if(!dead){
      gameOver = new Game_over();
      gameObjects.add(gameOver);
   }
   
}// end mousePressed()             




void checkCollisions(){
    
    for(int i= gameObjects.size() - 1; i >= 0 ; i--){
      
      GameObject go = gameObjects.get(i);
      
      if(go instanceof T_rex  ){
        
        if( ((T_rex)go).ducking == true){
            T_rex_circle_y = 40;
        } else{
            T_rex_circle_y = 20;
        }
        
        for(int j = gameObjects.size() - 1; j >= 0 ; j--){
          
           GameObject other = gameObjects.get(j);
           
            if(other instanceof Cactus){ // Check the type of object
               
                 if(other.pos.x <= go.pos.x + col_circle_radius){ // check if close to T_rex if so turn on collision   
            
                   for(int k = 0; k <  ((Cactus)other).objects.getChildCount(); k++){ // get child count
                        
                       for(int m = 0; m < (((Cactus)other).objects.getChild(k).getVertexCount()); m++){  // get vertex count
                            
                            PVector vertex = ((Cactus)other).objects.getChild(k).getVertex(m);        
                            vertex.div(5);
                            
                            if(dist(vertex.x + other.pos.x,   vertex.y + 244,     go.pos.x - 5, go.pos.y + T_rex_circle_y) < col_circle_radius ){
                              
                              stroke(255,0,0);
                              game_speed = 0; 
                              ((T_rex)go).dead();
                              
                            }
                            else{
                               stroke(0,255,0);
                            }
                            
                            if(show_collision){
                               noFill();
                               ellipse(vertex.x + other.pos.x, vertex.y  + 244,1,1);  // points on cactus
                               ellipse(go.pos.x - 5,go.pos.y + T_rex_circle_y, col_circle_size, col_circle_size);  // circle around t-rex
                            }
                            stroke(83,83,83);     
                       }// end inner inner for
                   }// end inner inner for  
                 }// end if to check if cactus close to T_rex    
          }// end inner if
          
          
          if(other instanceof Pterodactyl){ // Check the type of object
            
            if(other.pos.x <= go.pos.x + 100){ 
              
             //    noFill();
           //      ellipse(other.pos.x + 25, other.pos.y ,25,25);
                 //ellipse(go.pos.x - 5,go.pos.y + T_rex_circle_y, col_circle_size, col_circle_size);  // circle around t-rex
            
                if(dist(other.pos.x + 25, other.pos.y , go.pos.x, go.pos.y + T_rex_circle_y) < 25){
                      game_speed = 0; 
                      ((T_rex)go).dead();
                      stop_flying = true;
                }
            
              }
          }
          
        }// end inner for
      }// end if
    }// end for
}// end checkCollisions 