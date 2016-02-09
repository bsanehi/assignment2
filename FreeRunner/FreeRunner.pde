import ddf.minim.*;
Minim minim;

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>(250);
ArrayList<Leaderboard_data> high_data = new ArrayList<Leaderboard_data>();

boolean[] keys = new boolean[525];

void keyPressed()
{
  
  keys[keyCode] = true;
  
  int keyIndex = -1;
  
  if (key >= 'A' && key <= 'Z') {
    
    keyIndex = key - 'A';
  } 
  else if (key >= 'a' && key <= 'z') {
    
    keyIndex = key - 'a';
  }
  else if(key == ' '){
    
    keyIndex = key - ' ';
  }
  else if('0' <= key && key <= '9' && text.length() <= 13){
    
    int digit = key - '0'; 
    text = text + digit;
    
  }
  else if(key == ENTER && text.length() > 0){
     save_high_score(text);
  }
  else if( key == BACKSPACE){
    
     if (text.length()>0) {
       text = text.substring(0, text.length()-1);
     } 
  }
  
  if (keyIndex == -1) {
     // do nothing
  } else { 
    
      if(text.length() <= 13){
        text = text + key;
      }
  }
  
}

void keyReleased()
{
  keys[keyCode] = false; 
}

  
PrintWriter output;
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
boolean spawn_wait;
boolean input_new_high_name;
PFont font;
String text;
boolean show_leaderboard;


boolean mushroom_taken;
boolean spawn_mushroom;
boolean spawn_time;
int time;


boolean game_in_color;
Leaderboard leaderboard;
color sky_c, ground_c, cactus_c, t_rex_c, cloud_c, pterodactyl_c, text_c;


// Game Menu
//Menu sub_menu_1;
Menu sub_menu_2;
Menu sub_menu_3;

// sprite
T_rex tRex;

Cloud cloud;

// score class
Score score;

// game over class
Game_over gameOver;

// ground class
Ground_line ground;




void setup(){
  
  frameRate(60);
  
  load_in_high_score();
  
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

  // used to show collision detection code bewteen T-rex and Cactus : it may slow down game if set to "true" - as it will need to render other shapes.
  show_collision = false;
  
  // The T-rex collision circle size
  col_circle_size = 38;
  col_circle_radius = col_circle_size/2;
  
  game_in_color = false;
  
  // set the game color
  game_color();
  
  noStroke();
  Back_menu_button back_button = new Back_menu_button(50, color(0,0,0));
  gameObjects.add(back_button);
  
  // player sprite
  tRex = new T_rex(70 , height/2 , 0.3, 'W', 'S', t_rex_c ); // x , y , scale, jump button, duck button , color
  gameObjects.add(tRex);
  
  spawn_wait = false;
  input_new_high_name = false;
  
  font = loadFont("fonts/PressStart2P-150.vlw");
  textAlign(CENTER, CENTER);
  text = "";
  
  leaderboard = new Leaderboard();
  show_leaderboard = false;
  
  mushroom_taken = false;
  spawn_time = false;
  time = 0;
  
}// end setup




void game_color(){
  
  if(game_in_color){
    
    t_rex_c = color(149,75,46);
    sky_c = color(0,0,220);
    ground_c = color(255,172,80);
    cactus_c = color(72,144,40);
    cloud_c = color(255,255,255);
    pterodactyl_c = color(102,207,56);
    text_c = color(250,250,250);
    
  }
  else{
    
    sky_c = color(250,250,250);
    ground_c = color(250,250,250);
    cactus_c = color(83,83,83);
    t_rex_c = color(83,83,83);
    cloud_c = color(83,83,83);
    pterodactyl_c = color(83,83,83);
    text_c = color(83,83,83);
    
  }
  
}// end game_color



void reset_game(){
   time = 0;
   restart = true;
   dead = false;
   game_speed = 6;
   object_creation = 60;
   spawn_wait = false;
   mushroom_taken = false;
  // make_mushroom = false;
   game_in_color = false;   
   
}// end reset_game



void draw(){
  
  
  game_color();
  
  background(sky_c);
  
  noStroke();
  fill(sky_c);
  rect(0,0,width, ground_y);

  fill(ground_c);
  rect(0,ground_y, width, ground_y);
  

  if(start_game == false && !dead && show_leaderboard == false){
    
    background(0,0,0);
      
    intro_animation = width + (width/5);
    intro_speed = width *.03;
    
    sub_menu_2.render();
    sub_menu_3.render();
  }
  
  if(show_leaderboard == true){
    leaderboard.render();
  }
  
  
  if(start_game == true && intro_animation > 0 && show_leaderboard == false){
    
    if(frameCount % 30 == 0){
      
      for(int i=0; i< 20; i++){
  
        Dirt dirt = new Dirt(random(0, width + 300) , random(ground_y + 4, ground_y + 15), game_speed , color(0,0,0) );
        gameObjects.add(dirt);
      }
      
    }
       
    tRex.update();
    tRex.render();
    
    fill(0);
    intro_animation -= intro_speed;
    ellipse(width/2,height/2,intro_animation,intro_animation);
    
  }
  
  
  
  if(start_game == false){
    
    for(int i = gameObjects.size() - 1 ; i >= 0   ; i--){
      
       GameObject go = gameObjects.get(i);
       
       if(go instanceof Score){
           ((Score)go).score = 0;
           points = 0;
       }
       
       if(go instanceof Cactus || go instanceof Bumps || go instanceof Pterodactyl || go instanceof Mushroom ){
          gameObjects.remove(i);
       }
       
       reset_game();
       
     }// end for
    
  }// end if 
  
  
  
  
  if(start_game == true && intro_animation <= 0 ){
    
    for(int i = gameObjects.size() - 1 ; i >= 0   ; i--)
    {
       GameObject go = gameObjects.get(i);
       go.update();
       go.render();
       
       if(go instanceof Dirt || go instanceof Bumps || go instanceof Cactus || go instanceof Mushroom){
         go.speed = game_speed;
       }
       
       if(go instanceof Pterodactyl){
          go.speed = game_speed + 0.5;
       }
       
       if(go instanceof Score){
         points = ((Score)go).score;
         
         if(((Score)go).score > ((Score)go).high_score){    
            input_new_high_name = true;   
            text = ""; // clear text as user needs to type in their name
         }  
       }
       
    }// end for
    
      
    
    if(!dead){
      
      if(points > 400 && points % 420 == 0 && !game_in_color){
        spawn_mushroom = true;
      }
      
      if(frameCount % ((int)object_creation) == 0){
        
        if(spawn_mushroom == true && mushroom_taken == false){ 
          
          spawn_mushroom = false;
          Mushroom mushroom = new Mushroom(width, ground_y - 20, 0.3);
          gameObjects.add(mushroom); 
          spawn_wait = true;

        }else if(spawn_wait == false){
          
           if(points >= 600){
                
              if((int)random(1,3) == 1){
                 Pterodactyl pterodactyl = new Pterodactyl(width, random(ground_y- 75, ground_y -20), 0.4, game_speed + 0.5, color(pterodactyl_c));
                 gameObjects.add(pterodactyl);      
              }
              else{
                 Cactus cactus = new Cactus(width,ground_y - 46, 0.20 , game_speed, (int)random(1,9), color(83,83,83));
                 gameObjects.add(cactus); 
              }
                   
         }
         else{
            Cactus cactus = new Cactus(width,ground_y - 46, 0.20 , game_speed, (int)random(1,9), color(83,83,83));
            gameObjects.add(cactus); 
         }
          
           
           Bumps bump = new Bumps(width + (int)random(0,150), ground_y, 0.3, (int)random(1,3) , game_speed, color(83,83,83));
           gameObjects.add(bump); 
 
         }
          
      }// end inner if
      
  
      
       if(frameCount % 8 == 0){
         
          for(int i = 0; i<2; i++){
             Dirt dirt = new Dirt(random(width, width*2), random(ground_y + 4, ground_y + 15)  , game_speed , color(0,0,0) );
             gameObjects.add(dirt);
          }
          
       }// end inner if
       
     
      game_speed += ACCELERATION;
      
      
      if(object_creation >= 10){
        object_creation -= ACCELERATION * 1.7;
      }

      checkCollisions();
      
      
    }// end if not dead
    
    
    if(spawn_wait == true){             
       time++;
    }
    
    if(time == 300){
      spawn_wait = false;
      time = 0;
    }
    
    // clouds don't go away after death
    if(frameCount % 200 == 0){
        cloud = new Cloud(100+ width,random(30,height/3), random(.45,.7), 50, 1 , color(cloud_c) );  // x , y, scale, alpha, cloud speed
        gameObjects.add(cloud);
    }// end if
    
    Ground_line  ground = new Ground_line(0, ground_y, 0.02, color(83,83,83));
    gameObjects.add(ground);
    
  }// end start game
  
  if(dead && input_new_high_name){
    input_name_area();
  }
  
}// end draw





void make_some_mushroom(){
      
   Mushroom mushroom = new Mushroom(width, ground_y - 20, 0.3);
   gameObjects.add(mushroom); 
         
   // when Mushroom spawns wait 5 seconds before spawning anything else    
   if( time == 250 && spawn_wait == true && spawn_time) {
       spawn_wait = false;
       spawn_time = false;
    }
    
   spawn_mushroom = false;
}



  
void mousePressed() {
  
   if(dead){
     
      reset_game();
      game_in_color = false;
      game_color();
     
      for(int i = gameObjects.size() - 1 ; i >= 0   ; i--){
         GameObject go = gameObjects.get(i);
         
         if(go instanceof T_rex){
           
           // have to recreate player in order to reset color
           gameObjects.remove(i);
           tRex = new T_rex(70 , height/2 , 0.3, 'W', 'S', t_rex_c ); // x , y , scale, jump button, duck button , color
           gameObjects.add(tRex);
         }
         
         if(go instanceof Game_over){
           ((Game_over)go).remove_gameover();
         }
         
         if(go instanceof Score){
             ((Score)go).score = 0;
             points = 0;
         }
         
         if(go instanceof Cactus || go instanceof Bumps  || go instanceof Pterodactyl || go instanceof Mushroom || go instanceof Back_menu_button){
            gameObjects.remove(i);
         }

      }// end for
      
      // add back menu button
      noStroke();
      Back_menu_button back_button = new Back_menu_button(50, color(0,0,0));
      gameObjects.add(back_button);
      
   }// end if 
   
   if(!dead){
      input_new_high_name = false;
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
                            
                            // point on cactus
                            PVector vertex = ((Cactus)other).objects.getChild(k).getVertex(m);        
                            vertex.div(5);
                            
                            if(dist(vertex.x + other.pos.x,   vertex.y + 244,     go.pos.x - 5, go.pos.y + T_rex_circle_y) < col_circle_radius ){
                              
                              stroke(255,0,0);
                              ((T_rex)go).dead();
                              died();
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
                 
          }// end instanceof Cactus
          
          
          
          if(other instanceof Pterodactyl){ 
            
            if(other.pos.x <= go.pos.x + 100){ 

                if(dist(other.pos.x + 25, other.pos.y , go.pos.x, go.pos.y + T_rex_circle_y) < 25){
                       died();
                      ((T_rex)go).dead();
                }
              }
          }// end instanceof Pterodactyl
          
          
          
          if(other instanceof Mushroom){
            
            if(other.pos.x <= go.pos.x + 100){ 
              
                if(dist(other.pos.x, other.pos.y + 10, go.pos.x, go.pos.y + T_rex_circle_y) < 25){
               
                     ((Mushroom)other).play_sound();
                     mushroom_taken = true;
                     
                     // remove Mushroom
                     gameObjects.remove(j);
                     game_in_color = true;
                     game_color();
                     
                     // remove player
                     gameObjects.remove(i);
                     
                     // readd player with fixed colors
                     tRex = new T_rex(70 , height/2 , 0.3, 'W', 'S', t_rex_c ); // x , y , scale, jump button, duck button , color
                     gameObjects.add(tRex);
                }
            }
            
          }// end instanceof Mushroom
          
          
        }// end inner for
      }// end if
    }// end for
}// end checkCollisions 




void died(){
  
   game_speed = 0; 
   dead = true;
}



void input_name_area(){
  
   fill(text_c);
   textFont(font,width * 0.02);
   text("NEW  HIGH  SCORE!",width/2, height * .75); 
   
   stroke(text_c);
   noFill();
   rect(width/2 - 150,height/2 + 150, 300,40);
   textFont(font,width * 0.02);
   text(text,width/2, height/2 + 170);
   
   if(text.length() < 1){
     
      if(frameCount % 30 == 0){
        fill(0,0,0);
        rect(width/2,height/2 + 160, 5,20);
      }
     
   }// end inner if
   
}// end input_name_area




void save_high_score(String text){
  
   input_new_high_name = false;
  
   output = createWriter("data/HighScore.csv"); 
   
   String temp_string = text + "," + points;
   
   // check to see if high_data contains any value that needs to be copied to temp in order to save again
   if(high_data.size() > 0){
     
     ArrayList<Leaderboard_data> temp = new ArrayList<Leaderboard_data>();
     
     temp.add(new Leaderboard_data(temp_string));
     
     for(int i = 0 ; i<high_data.size(); i++){
       temp.add(high_data.get(i));
     }
     
     for(int i = 0 ; i<temp.size(); i++){
        output.println(temp.get(i).name + "," + temp.get(i).score);
     }
     
   }
   else{
     output.println(temp_string);
   }
   
   output.flush();
   output.close(); 
   
   high_data = new ArrayList<Leaderboard_data>();
   load_in_high_score();
   
}// end save_high_score





void load_in_high_score(){
  
  String filepath = "data/HighScore.csv";
  
  try{
    
    String[] lines = loadStrings(filepath);
    
    for(int i = 0; i<lines.length && i < 10; i++){ // added check to read-in only 10
        high_data.add(new Leaderboard_data(lines[i]));
    }// end for loop
    
  } catch(Exception e){
     e.printStackTrace();
     output = createWriter("data/HighScore.csv"); 
     output.flush();
     output.close();  
  }
  
}// end load_in_high_score