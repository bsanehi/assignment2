void setup(){
  size(1000,500);
  start_game = false;
 // sub_menu_1 = new Menu("Exit",1);
  sub_menu_2 = new Menu("View High Score",2);
  sub_menu_3 = new Menu("Start Game",3);
  tRex = new Sprite(' ',0.5f,200.0f,200.0f);
  
}// end setup

// The class name always starts with uppercase!!
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

// Game Menu
Menu sub_menu_1;
Menu sub_menu_2;
Menu sub_menu_3;

// sprite
Sprite tRex;

float menu_pos;


Boolean start_game;
float intro_animation;
float intro_speed;


void draw(){

  if(start_game == false){
    intro_animation = width + (width/5);
    intro_speed = width *.03;
    
    background(0,0,0);
    //sub_menu_1.render();
    sub_menu_2.render();
    sub_menu_3.render();
  }

  if(start_game == true && intro_animation >= 0){
    
    background(255,255,255);
    tRex.render();
    fill(0);
    intro_animation -= intro_speed;
    ellipse(width/2,height/2,intro_animation,intro_animation);
  }
  
  if(intro_animation <= 0){
    
    background(255,255,255);
    tRex.render();
  }
  
  
}// end draw